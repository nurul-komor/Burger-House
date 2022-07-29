<?php 
session_start();
require("dashboard/db/user.php");
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
    if($_REQUEST['action']=="findTable"){
      $name = $_POST['name'];
      $date = $_POST['date'];
      $people = $_POST['people'];
      $email = $_POST['email'];
      $time = $_POST['time'];
      $message  = [
        'name' => $name,
        'date' => $date,
        'people' => $people,
        'email' => $email,
        'time' => $time,
      ];
     $result = $user->insertData('messages',$message);
    }
?>