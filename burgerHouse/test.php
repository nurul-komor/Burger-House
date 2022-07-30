<?php 
    require('dashboard/db/user.php');
    session_start();
    echo "<pre>";
    // print_r($_SESSION);
    // if($action == "getAllCustomers"){
        /* $allCustomer  = $user->selectAllData('customers');
            $customerList   = array('customerList' =>  $allCustomer);
            echo json_encode($customerList);
            exit(); */
        // }
        $allMessages = $rows = $user->selectAllData('messages');
            $messageList   = array('getMessages' =>  $allMessages);
            echo json_encode($messageList);
            exit();
         
?>