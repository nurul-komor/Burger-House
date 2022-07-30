<?php
/* 	session_start();
	if(!$_SESSION['username']){
     	header('location:page-login.php');
     	exit;
 	} */
?>
<?php
    require('./db/user.php');
    $user =  new User();
    $action = $_REQUEST['action'];
    // create dynamic file 
    // insert topic 
    if($action=="addFood" && !empty($action)){
        $foodName = $_POST['foodName'];
        $foodTitle = $_POST['foodTitle'];
        $foodItems = $_POST['foodItems'];
        $foodPriceOld = $_POST['foodPriceOld'];
        $foodPriceNew = $_POST['foodPriceNew'];
        $foodImage = "";
        $foodImage = $_FILES['foodImage'];
        if(!empty($foodImage['name'])){
        $foodImageName = $user->upload_file($foodImage);
        $foodArray = [
            'food_name' => ucwords($foodName),
            'food_title' => $foodTitle,
            'food_image'=> $foodImageName,
            'old_price' => $foodPriceOld,
            'new_price'=> $foodPriceNew,
            'items'=> $foodItems
        ];
        echo json_encode($user->insertData('foods',$foodArray));
        }
    }
    // get all topics 
        if($action == "getAllFood"){
            $allFood = $rows = $user->selectAllData('foods');
            $foodList   = array('allFoods' =>  $allFood);
            echo json_encode($foodList);
            exit();
        }
    // Edit topics 
    if($action==="edit_food"){
        $edit_id  = (!empty($_POST['edit_id'])) ? $_POST['edit_id']:"";
        $foodName = $_POST['foodName'];
        $foodTitle = $_POST['foodTitle'];
        $foodItems = $_POST['foodItems'];
        $foodPriceOld = $_POST['foodPriceOld'];
        $foodPriceNew = $_POST['foodPriceNew'];
        $foodImage = $_FILES['foodImage'];
        if(!empty($foodImage['name'])){
        $foodImageName = $user->upload_file($foodImage);
        $foodArray = [
            'food_name' => ucwords($foodName),
            'food_title' => $foodTitle,
            'food_image'=> $foodImageName,
            'old_price' => $foodPriceOld,
            'new_price'=> $foodPriceNew,
            'items'=> $foodItems
        ];
    }
        if(empty($foodImage['name'])){
        $foodArray = [
            'food_name' => ucwords($foodName),
            'food_title' => $foodTitle,
            'old_price' => $foodPriceOld,
            'new_price'=> $foodPriceNew,
            'items'=> $foodItems
        ];
        }
        $updatedFood = $user->updateTopic('foods',$foodArray,$edit_id);
        echo json_encode($updatedFood);
    }
    // get single topic 
    if($action==="getBook"){
        $bookId  = (!empty($_GET['id'])) ? $_GET['id']:"";
        $tableName  = (!empty($_GET['tableName'])) ? $_GET['tableName']:"";
        $SingleBook = $user->SingleBook($tableName,$bookId);
        echo json_encode($SingleBook);
        exit();
    }
    if($action==="deleteFood"){
        $id  = (!empty($_GET['id'])) ? $_GET['id']:"";
        $table  = (!empty($_GET['tableName'])) ? $_GET['tableName']:"";
        $result = $user->deleteFood($table,$id);
        echo json_encode($result);
        // rmdir("../categories/".$topic_table);
    }
    // get all orders
    if($action == "getAllOrder"){
            $allOrders  = $user->selectAllData('order_list');
            $foodList   = array('orderLists' =>  $allOrders);
            echo json_encode($foodList);
            exit();
        }
    if($action == "getAllCustomers"){
            $allCustomer  = $user->selectAllData('customers');
            $customerList   = array('customerList' =>  $allCustomer);
            echo json_encode($customerList);
            exit();
        }
        // get all topics 
    if($action == "getMessages"){
            $allMessages = $rows = $user->selectAllData('messages');
            $messageList   = array('getMessages' =>  $allMessages);
            echo json_encode($messageList);
            exit();
        }
?>