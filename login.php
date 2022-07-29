<?php 
    session_start();
    require('dashboard/db/user.php');
     if(isset($_POST['btn'])){
        $customer = [
            'username' =>  $_POST['fName'],
            'email' => $_POST['email'],
            'phone' => $_POST['phone'],
            'address' => $_POST['address'],
        ];
        if(!preg_match('/^[0-9]{10}+$/', $customer['phone'])) {
            ?>
<div class="
                 alert alert-danger d-flex align-items-center" role="alert">
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
        class="bi bi-exclamation-triangle-fill" viewBox="0 0 16 16">
        <path
            d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
    </svg>
    <div>
        &nbsp;&nbsp;&nbsp;Invalid phone number
    </div>
</div>
<?php
        }
    else{
        $result = $user->insertData('customers',$customer);
         $_SESSION['fName'] = $customer['username'];
      $_SESSION['phone'] = $customer['phone'];
      $_SESSION['address'] = $customer['address'];
    if($result){
    }
   
        ?>

<div class="alert alert-success" role="alert">
    successfully signup
</div>
<?php 
    }
     }?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="" type="" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.4.24/sweetalert2.min.js">
    <title>Login</title>
</head>

<body>

    <h1 class="text-center fw-bolder">Sign Up</h1>
    <div class="container">
        <form method="post" action="" class="border p-md-5">

            <div class="mb-3">
                <label for="f-name" class="form-label">Full Name</label>
                <input type="text" class="form-control" id="f-name" aria-describedby="nameHelp" name="fName" required>
            </div>
            <div class="mb-3">
                <label for="phone" class="form-label">Phone</label>
                <input type="text" class="form-control" id="phone" aria-describedby="phonehelp" name="phone" required>
            </div>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                    name="email" required>
            </div>
            <div class="mb-3">
                <label for="address" class="form-label">Address</label>
                <textarea rows="10" class="form-control" cols="" style="resize:none" name="address"></textarea required>
                <div id="emailHelp" class="form-text">We'll never share your information with anyone else.</div>
            </div>
            <button name="btn" type="submit" class="btn btn-primary">Submit</button>
            <span class="float-end"><a class="link-secondary" href="/burgerHouse">Back to Home</a></span>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.4.24/sweetalert2.all.js">
        
    </script>
</body>

</html>