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
                        <td><button type="submit" class="me-3 editFood btn btn-primary" title=" Edit" data-bs-toggle="modal" data-bs-target="#edit-food" data-topic="${row.topic}" data-id="${row.id}"><i style="font-size: 20px;color: white;" class="fas fa-edit" aria-hidden="true"></i></button>
                        <button type="submit"  class="me-3 deleteFood btn btn-danger sweet-message" title=" Delete" data-img="${row.topic_img}" data-folder="${row.folder_name}"  data-id="${row.id}"><i style="font-size: 20px;color: white;" class="fa fa-trash" aria-hidden="true"></i></button>
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
                    swal("Good job!", "The food Added", "success");
                    getAllFood()
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
        var modal = $('#edit-food');
        modal.find('#edit_id').val(uid);
    })
    // edit topics 
    $(document).on('submit', '#edit-topic-form', function (e) {
        e.preventDefault();

        $.ajax({
            url: '/burgerHouse/dashboard/ajax.php',
            method: "post",
            dataType: "json",
            data: new FormData(this),
            processData: false,
            contentType: false,
            beforeSend: function () {

                var Loading = webToast.loading({
                    status: 'Loading...',
                    message: 'Please Wait..',
                    align: 'topcenter'
                });


                setTimeout(function () {

                    Loading.remove();

                }, 2000);
            },
            success: function (response) {
                // console.log(response);
                if (response) {
                    $("#edit-topic-form")[0].reset();
                    $("edit-topic").modal('hide');
                    webToast.Success({
                        status: 'Success !',
                        message: 'Successfully Edited Topic Name',
                        align: 'topcenter'
                        /* Default delay time 3 second */
                    })
                    getAllFood()
                }
            },
            error: function (request, error) {
                // console.log("Error:" + error);
                webToast.Danger({
                    status: 'Sorry !',
                    align: 'topcenter',
                    message: "Can't edit",
                    delay: 3000 /* 5 second will stay */
                })
            }
        });
    });
    // delete topic 
    $(document).on('click', '.deleteTopic', function () {
        // e.preventDefault()
        var uid = $(this).data('id')
        var folder = $(this).data('folder');
        var img = $(this).data('img');
        swal(
            {
                title: "Are you sure to delete ?",
                text: "You will not be able to recover this imaginary Topic !!",
                type: "warning",
                showCancelButton: !0,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "Yes, delete it !!",
                closeOnConfirm: !1,
            }
        );
        document.querySelector(".swal2-confirm.swal2-styled").onclick = function () {
            $.ajax({
                url: '/burgerHouse/dashboard/ajax.php',
                method: 'get',
                dataType: 'json',
                data: { action: "deleteTopic", id: uid, tableName: folder, topic_img: img },
                beforeSend: function () {

                    var Loading = webToast.loading({
                        status: 'Loading...',
                        message: 'Please Wait..',
                        align: 'topcenter'
                    });


                    setTimeout(function () {

                        Loading.remove();

                    }, 2000);
                },
                success: function (data) {
                    getAllFood()
                    swal("Good job !!", "You Successfull Deleted !!", "success");
                }
            });
        }

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
})
