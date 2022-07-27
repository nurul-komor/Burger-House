<?php 
session_start();
    $productName = $_POST['foodName'];
    $productPrice = $_POST['foodPrice'];
    $productImage = $_POST['foodImage'];
    $productArray  = [
        'foodName' => $productName,
        'foodPrice' => $productPrice,
        'foodImage' => $productImage,
    ];
    $_SESSION['allProducts'][]= $productArray;
    if(isset($_POST['index'])){
      $key=array_search($_GET['index'],$_SESSION['allProducts']);
      if($key!==false)
      unset($_SESSION['allProducts'][$key]);
      $_SESSION["allProducts"] = array_values($_SESSION["allProducts"]);
    }
    if(isset($_POST['action'])){
      if($_POST['action'] == 'destroyAll') {
         unset($_SESSION['allProducts']);
        //  echo 0;
      }
    }
?>