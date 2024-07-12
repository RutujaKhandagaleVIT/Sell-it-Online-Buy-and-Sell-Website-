<?php
// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Collect form data
    $name = $_POST["name"];
    $email = $_POST["email"];
    $address = $_POST["address"];
    
   
    
    // For demonstration purposes, let's just display the order details
    echo "<h2>Order Details</h2>";
    echo "<p>Name: $name</p>";
    echo "<p>Email: $email</p>";
    echo "<p>Address: $address</p>";
    echo "<p>Your order has been placed successfully!</p>";
} else {
    // If the form is not submitted, redirect to the checkout page
    header("Location: checkout.php");
    exit;
}
?>
