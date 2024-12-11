<?php
session_start(); // Start the session

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "nextgen";
$table = "user";

// Create a database connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Prepare and bind the SQL statement
$stmt = $conn->prepare("INSERT INTO $table (firstname, lastname, email, phone, nic, username, password) VALUES (?, ?, ?, ?, ?, ?, ?)");
if (!$stmt) {
    die("Preparation failed: " . $conn->error);
}

// Collect form data without hashing the password
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$nic = $_POST['nic'];
$username = $_POST['username'];
$password = $_POST['password']; // Store plain text password

// Bind parameters and execute the statement
$stmt->bind_param("sssssss", $firstname, $lastname, $email, $phone, $nic, $username, $password);
if ($stmt->execute()) {
    echo "<script>
            alert('Registration successful!');
            window.location.href = '../Login/login.html'; // Redirect to the login page
          </script>";
} else {
    echo "<script>
            alert('Error: Could not register user. " . $stmt->error . "');
            window.history.back(); // Return to the registration form
          </script>";
}

// Close connections
$stmt->close();
$conn->close();
?>
