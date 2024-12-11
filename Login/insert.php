<?php
session_start(); // Start the session

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "nextgen";
$table = "user";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if form data is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $user = $_POST['username'];
    $pass = $_POST['password'];

    // Sanitize user input to prevent SQL injection
    $user = $conn->real_escape_string($user);
    $pass = $conn->real_escape_string($pass);

    // Query to check if the username and password exist in the database
    $sql = "SELECT * FROM $table WHERE username = '$user' AND password = '$pass'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // User is authenticated
        $_SESSION['username'] = $user; // Set session variable
        echo "<script>alert('Successfully logged in!');</script>";
        echo "<script>window.location.href = '../HomePage/index.html';</script>"; // Redirect to homepage
        exit(); // Ensure no further code is executed
    } else {
        // Invalid login
        echo "<script>alert('Invalid username or password!');</script>";
        echo "<script>window.location.href = 'login.html';</script>"; // Redirect back to login
    }
}

$conn->close();
?>

