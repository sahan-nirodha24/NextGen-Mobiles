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

// Retrieve form data
$email = $_POST['email'];
$phone = $_POST['phone'];
$newPassword = $_POST['newPassword']; // Corrected to match your input field name

// SQL query to check if email and phone number exist in the user table
$sql = "SELECT password FROM $table WHERE email = ? AND phone = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ss", $email, $phone);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $currentPassword = $row['password'];

    // Check if the new password is the same as the current password
    if ($newPassword === $currentPassword) {
        echo "<script>
            alert('The new password cannot be the same as the current password.');
            window.history.back(); // Go back to the previous page
        </script>";
    } else {
        // If a match is found, update the password in the existing password column
        $updateSql = "UPDATE $table SET password = ? WHERE email = ? AND phone = ?";
        $updateStmt = $conn->prepare($updateSql);
        $updateStmt->bind_param("sss", $newPassword, $email, $phone);

        if ($updateStmt->execute()) {
            // Password successfully updated
            $updateStmt->close();
            $conn->close();

            // Display success message and redirect to the login page after 3 seconds
            echo "<script>
                alert('Password has been successfully reset. Redirecting to login page...');
                setTimeout(function() {
                    window.location.href = '../Login/login.html';
                }, 3000);
            </script>";
            exit(); // Ensure no further code is executed after redirection
        } else {
            echo "Error updating password: " . $conn->error;
        }
    }
} else {
    // If no match is found, inform the user
    echo "<script>
        alert('Email or phone number does not match our records.');
        window.history.back(); // Go back to the previous page
    </script>";
}

$stmt->close();
$conn->close();
?>

