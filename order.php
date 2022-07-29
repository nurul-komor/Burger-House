<?php 
    session_start();
    if($_REQUEST['action']=="goToBuy"){
        if(!empty($_SESSION['allProducts'])){
      $getData = $_POST;
      $_SESSION['allProducts'];
      $_SESSION['userName'] ="testName";
      $_SESSION['address'] ="testAddress";
      $orderText = "";
      foreach($_SESSION['allProducts'] as   $key => $value){
        $data = $value['uniqueId'];
            $orderText.=  $_SESSION['allProducts'][$data]['foodName']."(quantity:".$getData[$data]." pcs)";
      }
       $orderText;
    require('./dashboard/db/user.php');
    $user =  new User();
    $action = $_REQUEST['action'];
        $orderList = $orderText;
        $userName = $_SESSION['userName'];
        $address = $_SESSION['address'];
        $totalPrice = $_POST['totalPrice'];
        $status = "Placed";
        
            $foodArray = [
            'username'=> $userName,
            'products' => $orderList,
            'address'=> $address,
            'price'=> $totalPrice,
            'status'=> $status
        ];
        } 
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Hello, world!</title>
</head>

<body>
    <div class="container">
        <div class="">
            <?php if(!empty($_SESSION['allProducts'])){ ?>
            <div class="alert alert-success" role="alert">
                <h4 class="alert-heading">Well
                    done!<?php echo "   Your order id: #".$user->insertData('order_list',$foodArray)?></h4>
                <p> Your order is placed successfully. We'll notify you about status of your order in your gmail/phone
                    that you
                    provided
                    us. And our seller will receive the money from you as we told.<span class="fw-bolder"> Your order
                        wil
                        be delivered within 30
                        minutes.</span>
                </p>
                <hr>
                <p>Your order List is:
                    <?php  echo $orderText?>
                </p>
                <hr>
                <p>Total price: $
                    <?php  echo $totalPrice?>
                    <span class="float-end">Status: <?php echo $status?></span>
                </p>
                <div class="text-danger fw-border">
                    &nbsp;&nbsp;To cancel your order please contact us in our phone number
                </div>
            </div>
            <?php }else{ 

                header('Location: /burgerHouse/');
            }
            
            ?>

        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
</body>

</html>
<?php
     unset($_SESSION['allProducts']);;
} ?>