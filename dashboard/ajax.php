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
    if($action==="editBooks"){
        $edit_id  = (!empty($_POST['edit_id'])) ? $_POST['edit_id']:"";
        $tableName  = (!empty($_POST['tableName'])) ? $_POST['tableName']:"";
        $bookName = $_POST['bookName'];
        $description = $_POST['bookDescription'];
        $photo = $_FILES['bookImg'];
        $file = $_FILES['bookFile'];
        if(empty($photo['name']) && empty($file['name'])){
            $bookArray = [
                'bookName' => '"'.ucwords($bookName).'"',
                'description' => '"'.ucwords($description).'"',
            ];
        }
        else if(!empty($photo['name']) && empty($file['name'])){
            $photoName = "";
            $photoName = $user->upload_file($photo);
            $bookArray = [
                'bookName' => '"'.ucwords($bookName).'"',
                'description' => '"'.ucwords($description).'"',
                'book_img' => '"'.ucwords($photoName).'"'
            ];
        }
        else if(empty($photo['name']) && !empty($file['name'])){
            $fileName = "";
            $fileName = $user->upload_file($file);
            $bookArray = [
                'bookName' => '"'.ucwords($bookName).'"',
                'description' => '"'.ucwords($description).'"',
                'book_file' => '"'.ucwords($fileName).'"'
            ];
        }
        else if(!empty($photo['name']) && !empty($file['name'])){
            $photoName =$fileName = "";
            $photoName = $user->upload_file($photo);
            $fileName = $user->upload_file($file);
            $bookArray = [
                'bookName' => '"'.ucwords($bookName).'"',
                'description' => '"'.ucwords($description).'"',
                'book_img' => '"'.ucwords($photoName).'"',
                'book_file' => '"'.ucwords($fileName).'"'
            ];
        }
        $updatedBook = $user->updateTopic($tableName,$bookArray,$edit_id);
        echo json_encode($updatedBook);
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
?>