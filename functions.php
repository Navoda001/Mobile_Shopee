<?php

//required MySQL connection
require('database/DBController.php');

//required product class
require('database/product.php');

//DBController object
$db = new DBController();

//product object
$product = new Product($db);
