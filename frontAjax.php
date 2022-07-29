<?php 
session_start();
    if($_POST['action']=="createSession"){
      $productName = $_POST['foodName'];
      $productPrice = $_POST['foodPrice'];
      $productImage = $_POST['foodImage'];
      $uniqueId = time();
      $productArray  = [
        'foodName' => $productName,
        'foodPrice' => $productPrice,
        'foodImage' => $productImage,
        'uniqueId' => $uniqueId
      ];
      $_SESSION['allProducts'][$uniqueId]= $productArray;
      echo json_encode($uniqueId);
    }
    // delete single item from session 
    if(isset($_GET['action'])){
      if($_GET['action'] == 'deleteChart') {
        $id = $_GET['index'];
        unset($_SESSION['allProducts'][$id]);
      }
    }
    // delete single all products from session 
    if(isset($_GET['action'])){
      if($_GET['action'] == 'destroyAll') {
         unset($_SESSION['allProducts']);
         echo '1';
      }
    }
    
?>