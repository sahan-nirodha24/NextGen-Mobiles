<?php
session_start(); // Start the session

// Initialize cart if it doesn't exist
if (!isset($_SESSION['cart'])) {
    $_SESSION['cart'] = [];
}

// Handle adding products to the cart
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['product_name'])) {
    $product_name = $_POST['product_name'];
    $product_price = (float)$_POST['product_price']; // Ensure price is a float
    $quantity = 1; // Default quantity to 1

    // Check if the product already exists in the cart
    $found = false;
    foreach ($_SESSION['cart'] as &$item) {
        if ($item['name'] === $product_name) {
            $item['quantity']++; // Increment quantity
            $found = true;
            break;
        }
    }

    // If product doesn't exist, add it to the cart
    if (!$found) {
        $_SESSION['cart'][] = [
            'name' => $product_name,
            'price' => $product_price,
            'quantity' => $quantity,
        ];
    }

    // Refresh the page to show updated cart
    header("Location: cart.php");
    exit();
}

// Function to calculate total price
function calculateTotal() {
    $total = 0;
    foreach ($_SESSION['cart'] as $item) {
        // Check if 'price' and 'quantity' exist before using them
        if (isset($item['price']) && isset($item['quantity'])) {
            $total += $item['price'] * $item['quantity'];
        }
    }
    return $total;
}

$total_amount = calculateTotal();

// Handle quantity change and removal of products
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Update quantity
    if (isset($_POST['key']) && isset($_POST['quantity'])) {
        $key = $_POST['key'];
        $quantity = (int)$_POST['quantity'];
        if ($quantity > 0) {
            $_SESSION['cart'][$key]['quantity'] = $quantity;
        }
    }

    // Remove product
    if (isset($_POST['remove'])) {
        $remove_key = $_POST['remove'];
        unset($_SESSION['cart'][$remove_key]);
        $_SESSION['cart'] = array_values($_SESSION['cart']); // Re-index the array
    }

    // Refresh the page to show updated cart
    header("Location: cart.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart | NextGen</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="cart.css">
</head>
<body>
    <header>
        <div class="navbar">
            <div class="navbar-container">
                <div class="logo">
                    <a href="../HomePage/index.html">NextGen</a> 
                </div>
                <ul class="nav-links">
                    <li><a href="../HomePage/index.html">Home</a></li>
                    <li><a href="../Category/produt.html">Products</a></li>
                    <li><a href="../Login/login.html">Login</a></li>
                    <li><a href="../Register/registration.html">Registration</a></li>
                </ul>
            </div>
        </div>
        <div class="cart-icon">
            <i class="fas fa-shopping-cart"></i> 
            <span><?php echo count($_SESSION['cart']); ?></span>
        </div>
        <h2>Your Shopping Cart</h2>
    </header>

    <table class="cart-table">
        <thead>
            <tr>
                <th>Product Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php if (empty($_SESSION['cart'])): ?>
                <tr>
                    <td colspan="5" class="empty-cart">Your cart is empty.</td>
                </tr>
            <?php else: ?>
                <?php foreach ($_SESSION['cart'] as $key => $item): ?>
                    <tr>
                        <td><?php echo htmlspecialchars($item['name'] ?? 'Unnamed Product'); ?></td>
                        <td>Rs. <?php echo number_format(isset($item['price']) ? $item['price'] : 0, 2); ?></td>
                        <td>
                            <form action="cart.php" method="post">
                                <input type="hidden" name="key" value="<?php echo $key; ?>">
                                <input type="number" name="quantity" value="<?php echo htmlspecialchars($item['quantity']); ?>" min="1" onchange="this.form.submit()">
                            </form>
                        </td>
                        <td>Rs. <?php echo number_format(isset($item['price']) ? $item['price'] * $item['quantity'] : 0, 2); ?></td>
                        <td>
                            <form action="cart.php" method="post">
                                <input type="hidden" name="remove" value="<?php echo $key; ?>">
                                <button type="submit">Remove</button>
                            </form>
                        </td>
                    </tr>
                <?php endforeach; ?>
            <?php endif; ?>
        </tbody>
    </table>

    <div class="total">
        <strong>Total Amount: Rs. <?php echo number_format($total_amount, 2); ?></strong>
    </div>

    <!-- Add Continue Shopping link -->
    <div class="continue-shopping">
        <a href="../Category/produt.html">Continue Shopping</a>
    </div>

    <footer>
        <div class="footer-content">
            <p>&copy; 2024 NextGen Mobiles. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
