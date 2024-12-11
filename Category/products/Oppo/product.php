<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "nextgen";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $productName = $_POST['product_name'];
    $productPrice = $_POST['product_price'];
    $productQuantity = $_POST['product_quantity'];
    $discount = $_POST['discount'];
    $rating = $_POST['rating']; // Get the rating from the form
    
    // Handle file upload
    $targetDir = "oppo_uploads/";
    
    // Check if the directory exists, if not, create it
    if (!is_dir($targetDir)) {
        mkdir($targetDir, 0755, true); // Create the directory with permissions
    }

    $imageFile = $_FILES["product_image"]["name"];
    $targetFilePath = $targetDir . basename($imageFile);

    // Check for file upload errors
    if ($_FILES["product_image"]["error"] == UPLOAD_ERR_OK) {
        if (move_uploaded_file($_FILES["product_image"]["tmp_name"], $targetFilePath)) {
            // Insert product data with image path and rating into the database
            $sql = "INSERT INTO oppo (product_name, product_price, product_image, product_quantity, discount, rating) 
                    VALUES ('$productName', '$productPrice', '$targetFilePath', '$productQuantity', '$discount', '$rating')";

            if ($conn->query($sql) === TRUE) {
                echo "<script>
                        alert('Product added successfully!');
                        window.location.href = 'oppo.php';
                     </script>";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        } else {
            echo "File upload failed.";
        }
    } else {
        echo "Error during file upload: " . $_FILES["product_image"]["error"];
    }
}

$conn->close();
?>
