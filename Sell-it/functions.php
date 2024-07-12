<?php
require ('database/DBController.php');

// require Product Class
require ('database/Product.php');

// require Product Class
require ('database/Cart.php');

$db = new DBController();

// Product object
$product = new Product($db);

// Product object
$product = new Product($db);
$product_shuffle = $product->getData();

// Cart object
$Cart = new Cart($db );

?>