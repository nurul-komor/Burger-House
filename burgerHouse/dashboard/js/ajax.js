$(document).ready(function () {

    function getFood(row, index) {
        var singleData = "";
        singleData += `<tr>
                        <td>${index}</td>
                        <td>${row.food_name}</td>
                        <td style="max-width:120px">${row.food_title}</td>
                        <td scope="row"><img src="./uploads/${row.food_image}" width="130px" height="100px"></td>
                        <td>${row.items - row.sold_out}</td>
                        <td>${row.new_price}</td>
                        <td>${row.old_price}</td>
                        <td><button type="submit" class="me-3 editFood btn btn-primary" title=" Edit" data-bs-toggle="modal" data-bs-target="#edit-food" data-food="${row.food_name}" data-items="${row.items}" data-title="${row.food_title}" data-new-price="${row.new_price}" data-old-price="${row.old_price}" data-id="${row.id}"><i style="font-size: 20px;color: white;" class="fas fa-edit" aria-hidden="true"></i></button>
                        <button type="submit"  class="me-3 deleteFood btn btn-danger sweet-message" title=" Delete"   data-id="${row.id}"><i style="font-size: 20px;color: white;" class="fa fa-trash" aria-hidden="true"></i></button>
                        </td>          
                        </tr>`;
        return singleData;
    }
    function getAllFood() {
        $.ajax({
            url: '/burgerHouse/dashboard/ajax.php',
            method: 'get',
            dataType: 'json',
            data: { action: "getAllFood" },
            success: function (data) {
                console.log(data);
                var foodList = "";
                var id = 1;
                $.each(data.allFoods, function (index, singleFood) {
                    foodList += getFood(singleFood, id);
                    id++;
                });
                $("#foodsTable tbody").html(foodList);
            }
        });
    }
    $(document).on('submit', '#add-food-form', function (e) {
        e.preventDefault();
        $.ajax({
            url: '/burgerHouse/dashboard/ajax.php',
            method: "post",
            dataType: "json",
            data: new FormData(this),
            processData: false,
            contentType: false,
            beforeSend: function () {


            },
            success: function (response) {
                console.log(response);
                if (response) {
                    $("#add-food-form")[0].reset();
                    Swal.fire(
                        'Good job!',
                        'You clicked the button!',
                        'success'
                    )
                    getAllFood();
                }
            },
            error: function () {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Something went wrong!',
                })
            }
        });
    });

    // edit modal call
    $(document).on('click', '.editFood', function (e) {
        e.preventDefault()
        var uid = $(this).data('id');
        var foodName = $(this).data('food');
        var foodTitle = $(this).data('title');
        var foodItems = $(this).data('items');
        var foodTitle = $(this).data('title');
        var foodnewprice = $(this).data('new-price');
        var foodoldprice = $(this).data('old-price');
        var modal = $('#edit-food');
        modal.find('#edit_id').val(uid);
        modal.find('#food-name').val(foodName);
        modal.find('#food-title').val(foodTitle);
        modal.find('#food-itmes').val(foodItems);
        modal.find('#food-price-old').val(foodoldprice);
        modal.find('#food-price-new').val(foodnewprice);
    })
    // edit topics 
    $('#edit-food-form').on('submit', function (e) {
        e.preventDefault();
        // alert("ok")
        $.ajax({
            url: '/burgerHouse/dashboard/ajax.php',
            method: "post",
            dataType: "json",
            data: new FormData(this),
            processData: false,
            contentType: false,
            beforeSend: function () {

            },
            success: function (data) {
                console.log(data);
                if (data) {
                    $("#add-food-form")[0].reset();
                    Swal.fire(
                        'Good job!',
                        'Successfully Edited!',
                        'success'
                    )
                    $('#edit-food').modal('hide');
                    getAllFood();
                }
            },
            error: function (request, error) {
                console.log(request);
                console.log(error);
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Something went wrong!',
                })
            }
        });
    });
    // delete topic 
    $(document).on('click', '.deleteFood', function () {
        // e.preventDefault()
        var uid = $(this).data('id')
        const swalWithBootstrapButtons = Swal.mixin({
            customClass: {
                confirmButton: 'btn btn-success',
                cancelButton: 'btn btn-danger'
            },
            buttonsStyling: false
        })

        swalWithBootstrapButtons.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'No, cancel!',
            reverseButtons: true
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: '/burgerHouse/dashboard/ajax.php',
                    method: 'get',
                    dataType: 'json',
                    data: { action: "deleteFood", id: uid, tableName: "foods" },

                    success: function (data) {
                        alert("Ok")
                        getAllFood()
                        // swal("Good job !!", "You Successfull Deleted !!", "success");
                    }
                });
                swalWithBootstrapButtons.fire(
                    'Deleted!',
                    'Your file has been deleted.',
                    'success'
                )
            } else if (
                /* Read more about handling dismissals below */
                result.dismiss === Swal.DismissReason.cancel
            ) {
                swalWithBootstrapButtons.fire(
                    'Cancelled',
                    'Your imaginary file is safe :)',
                    'error'
                )
            }
        })

        // }

    })
    // search operation 
    $(document).on('keyup', 'input#search', function () {
        var search = $(this).val();
        if (!(search === '')) {
            $.ajax({
                url: '/bookShelf/dashboard/search.php',
                method: 'post',
                dataType: 'json',
                data: { search_query: search },
                success: function (result) {
                    console.log(result);
                    var searchList = "";
                    var id = 1;
                    $.each(result.searchResult, function (index, data) {
                        searchList += getTopicsRow(data, id);
                        id++;
                    });
                    $("#topicTable tbody").html(searchList);
                },
                error: function () {
                    webToast.Danger({
                        status: 'Sorry !',
                        align: 'topright',
                        message: 'Not found',
                        delay: 3000 /* 5 second will stay */
                    })
                }
            })
        }
        else {
            getAllFood()
        }
    })
    getAllFood()
    function getOrder(row, index) {
        var singleData = "";
        singleData += `<tr>
                        <td>${index}</td>
                        <td>${row.username}</td>
                        <td>${row.phone}</td>
                        <td style="width:200px;text-align:justify;break:break-all">${row.address}</td>
                        <td><textarea class="form-control" disabled style="resize:none" cols="20" rows="5">${row.products} </textarea>
                        </td>
                        <td>${row.price}</td>
                        <td>${row.status}</td>
                        <td>
                        <button type="submit" class="me-3 btn" title="update status" id="updateStatus" data-id="${row.id}"><i style="font-size: 20px;color: white;" class="text-success fa-solid fa-circle-check"></i></button>
                        </td>
                        </tr>`;
        return singleData;
    }

    function getAllOrders() {
        $.ajax({
            url: '/burgerHouse/dashboard/ajax.php',
            method: 'get',
            dataType: 'json',
            data: { action: "getAllOrder" },
            success: function (data) {
                console.log(data);
                var orderList = "";
                var id = 1;
                $.each(data.orderLists, function (index, singleOrder) {
                    orderList += getOrder(singleOrder, id);
                    id++;
                });
                $("#orderTable tbody").html(orderList);
            },
            error: function (request, error) {
                console.log(request);
            }
        });
    }
    getAllOrders()

    function getCustomer(row, index) {
        // alert("ok")
        var singleData = "";
        singleData += `<tr>
                        <td>${index}</td>
                        <td>${row.username}</td>
                        <td>${row.email}
                        <td>${row.phone}</td>
                        <td style="max-width:120px">${row.address}</td>
                        </tr>`;
        return singleData;
    }
    function getAllCustomer() {
        $.ajax({
            url: '/burgerHouse/dashboard/ajax.php',
            method: 'get',
            dataType: 'json',
            data: { action: "getAllCustomers" },
            success: function (data) {
                console.log(data);
                var orderList = "";
                var id = 1;
                $.each(data.customerList, function (index, singleOrder) {
                    orderList += getCustomer(singleOrder, id);
                    id++;
                });
                $("#customers tbody").html(orderList);
            },
            error: function (request, error) {
                console.log(request);
            }
        });
    }
    getAllCustomer();

    // get cusomters messages 
    function getMessage(row, index) {
        var singleData = "";
        singleData += `<tr>
                        <td>${index}</td>
                        <td>${row.name}</td>
                        <td >${row.email}</td>
                        <td>${row.date}</td>
                        <td>${row.people}</td>
                        <td>${row.time}</td>
                        </td>          
                        </tr>`;
        return singleData;
    }
    function getAllMessages() {
        // alert("ok")
        $.ajax({
            url: '/burgerHouse/dashboard/ajax.php',
            method: 'get',
            dataType: 'json',
            data: { action: "getMessages" },
            success: function (data) {
                console.log(data);
                var messageList = "";
                var id = 1;
                $.each(data.getMessages, function (index, singleMessage) {
                    messageList += getMessage(singleMessage, id);
                    id++;
                });
                $("#messageList tbody").html(messageList);
            }
        });
    }
    getAllMessages();
    $(document).on('click', '#updateStatus', function (e) {
        e.preventDefault()
        var uid = $(this).data('id');
        // alert(uid)
        $.ajax({
            url: '/burgerHouse/dashboard/ajax.php',
            method: 'get',
            dataType: 'json',
            data: { action: "updateOrderStatus", id: uid },
            success: function (response) {
                console.log(response);
                location.reload();
                if (response) {
                    Swal.fire(
                        'Good job!',
                        'Delivered!',
                        'success'
                    )
                }


            },
            error: function () {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Something went wrong!',
                })
            }
        })
    })

})
