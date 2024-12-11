<?php

$host = 'localhost'; 
$user = 'root'; 
$password = ''; 
$dbname = 'nextgen'; 

$conn = mysqli_connect($host, $user, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

if (isset($_GET['query'])) {
    $query = $_GET['query'];
    $query = mysqli_real_escape_string($conn, $query); 

    $sql = "SELECT product_name FROM (
                SELECT product_name FROM apple
                UNION ALL
                SELECT product_name FROM samsung
                UNION ALL
                SELECT product_name FROM huawei
                UNION ALL
                SELECT product_name FROM honor
                UNION ALL
                SELECT product_name FROM oppo
                UNION ALL
                SELECT product_name FROM xiaomi
                UNION ALL
                SELECT product_name FROM oneplus
                UNION ALL
                SELECT product_name FROM pixel
            ) AS all_products
            WHERE product_name LIKE '%$query%' LIMIT 10"; 

    $result = mysqli_query($conn, $sql);
    $products = [];

    while ($row = mysqli_fetch_assoc($result)) {
        $products[] = $row; 
    }

    echo json_encode($products);
}

mysqli_close($conn);
?>
