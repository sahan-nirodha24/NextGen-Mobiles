<?php
session_start(); // Start the session

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "nextgen";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM oneplus";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OnePlus | NextGen</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="devices.css">
    <style>
        /* Add styles for the popup */
        .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
            border-radius: 5px;
            z-index: 1000;
        }
    </style>
</head>
<body>
    <header id="header">
        <div class="logo-container">
            <img src="../../../HomePage/Images/Home/logo.png" alt="NextGen Logo" class="logo">
            <h1 class="shop-name">NextGen</h1>
            <nav>
                <div class="menu-icon" id="menu-toggle">&#9776;</div>
                <ul id="nav-menu">
                    <li><a href="../../../HomePage/index.html">Home</a></li>
                    <li><a href="../Samsung/samsung.php">Samsung</a></li>
                    <li><a href="../Apple/apple.php">Apple</a></li>
                    <li><a href="../Pixel/pixel.php">Pixel</a></li>
                    <li><a href="../Oneplus/oneplus.php">OnePlus</a></li>
                    <li><a href="../Honor/honor.php">Honor</a></li>
                    <li><a href="../Huawei/huawei.php">Huawei</a></li>
                    <li><a href="../Oppo/oppo.php">Oppo</a></li>
                    <li><a href="../Xiaomi/xiaomi.php">Xiaomi</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const menuToggle = document.getElementById("menu-toggle");
            const navMenu = document.getElementById("nav-menu");

            menuToggle.addEventListener("click", function() {
                navMenu.classList.toggle("active");
            });

            // Function to show popup message
            window.showPopup = function(message) {
                const popup = document.createElement('div');
                popup.className = 'popup';
                popup.innerText = message;
                document.body.appendChild(popup);
                popup.style.display = 'block';

                // Automatically hide popup after 3 seconds
                setTimeout(() => {
                    popup.style.display = 'none';
                    document.body.removeChild(popup);
                }, 3000);
            };
        });
    </script>

<div class="product-section">
    <h2>OnePlus Devices</h2>
    <div class="product-grid">
        <?php
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                $discounted_price = $row['product_price'] - ($row['product_price'] * $row['discount'] / 100);
                ?>
                <div class="product-item">
                    <div class="product-image">
                        <img src="<?php echo $row['product_image']; ?>" alt="<?php echo $row['product_name']; ?>">
                        <?php if ($row['discount'] > 0) { ?>
                            <span class="discount">-<?php echo $row['discount']; ?>%</span>
                        <?php } ?>
                        <?php if ($row['product_quantity'] > 0) { ?>
                            <span class="newarrival">Instock</span>
                        <?php } else { ?>
                            <span class="outofstock">Outstock</span>
                        <?php } ?>
                    </div>
                    <div class="product-info">
                        <span class="product-name"><?php echo $row['product_name']; ?></span>
                        <span class="product-price">Rs.<?php echo number_format($row['product_price'], 2); ?></span>
                        <?php if ($row['discount'] > 0) { ?>
                            <span class="product-discount">Rs.<?php echo number_format($discounted_price, 2); ?></span>
                        <?php } ?>
                        <span class="rating">
                            <?php for ($i = 1; $i <= 5; $i++) {
                                echo '<i class="fa fa-star' . ($i <= $row['rating'] ? '' : '-half-alt') . '"></i>';
                            } ?>
                        </span>

                        <form action="../../../Cart/cart.php" method="post" onsubmit="return handleAddToCart(event, <?php echo $row['product_quantity']; ?>, '<?php echo $row['product_name']; ?>');"> <!-- Modified form submission -->
                            <input type="hidden" name="product_name" value="<?php echo $row['product_name']; ?>">
                            <input type="hidden" name="product_price" value="<?php echo $row['discount'] > 0 ? $discounted_price : $row['product_price']; ?>">
                            <button class="add-to-cart" type="submit">
                                <i class="fa fa-shopping-cart"></i> Add to Cart
                            </button>
                        </form>
                    </div>
                </div>
                <?php
            }
        } else {
            echo "No products found.";
        }
        ?>
    </div>
</div>

<h3>
    <center><a href="product.html">Add New Products </a></center>
</h3>

<footer>
    <div class="footer-content">
        <div class="footer-logo">
            <img src="../../../HomePage/Images/Home/logo.png" alt="NextGen Logo" class="footer-logo-img">
            <h2>NextGen Mobiles</h2>
        </div>
        <div class="footer-links">
            <ul>
                <li><a href="../../../HomePage/about.html">About Us</a></li>
                <li><a href="../../../HomePage/privacy.html">Privacy Policy</a></li>
                <li><a href="../../../HomePage/terms.html">Terms of Service</a></li>
                <li><a href="../../../HomePage/contact.html">Contact Us</a></li>
            </ul>
        </div>
        <div class="footer-social">
            <a href="https://facebook.com" target="_blank" class="social-icon"><i class="fab fa-facebook-f"></i></a>
            <a href="https://twitter.com" target="_blank" class="social-icon"><i class="fab fa-twitter"></i></a>
            <a href="https://instagram.com" target="_blank" class="social-icon"><i class="fab fa-instagram"></i></a>
            <a href="https://linkedin.com" target="_blank" class="social-icon"><i class="fab fa-linkedin-in"></i></a>
        </div>
    </div>
    <div class="footer-bottom">
        <p>&copy; 2024 NextGen Mobiles. All rights reserved.</p>
    </div>
</footer>

<script>
    function handleAddToCart(event, quantity, productName) {
        // Check if the product is out of stock
        if (quantity <= 0) {
            event.preventDefault(); // Prevent the form from submitting
            showPopup(`You can't add "${productName}" to the cart. It is out of stock.`);
            return false; // Stop the form submission
        }
        return true; // Allow the form submission
    }
</script>

</body>
</html>
<?php
$conn->close();
?>
