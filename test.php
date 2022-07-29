<?php 
    require('dashboard/db/user.php');
    // if($action == "getAllOrder"){
            $allOrders = $rows = $user->selectAllData('order_list');
            $foodList   = array('orderLists' =>  $allOrders);
            echo json_encode($foodList);
            exit();
        // }
?>