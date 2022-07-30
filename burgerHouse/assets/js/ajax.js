$(document).ready(function () {
    function getFood(row) {
        var singleData = "";
        singleData += `
                        <div class="col-lg-4 p-0">
                            <div class="order-section">
                                <div class="order-image one" style="background-image:url('dashboard/uploads/${row.food_image}')"></div>
                                <h3>${row.food_name}</h3>
                                <p>${row.food_title} </p>
                                <p class="text-danger" style="font-weight:bolder;font-size:18px">$ ${row.new_price}   <span class="text-secondary" style="text-decoration: line-through;">  ${row.old_price}</span></p>
                                    <button data-price="${row.new_price}" data-name="${row.food_name}"  data-image="${row.food_image}" type="submit" class="js-cd-add-to-cart" id="add-to-cart-btn">Add to cart</button>

                            </div>
                        </div>
                        `;

        return singleData;
    }
    function getAllFoods() {
        $.ajax({
            url: '/burgerHouse/dashboard/ajax.php',
            method: 'get',
            dataType: 'json',
            data: { action: "getAllFood" },
            success: function (data) {
                var foodList = "";
                $.each(data.allFoods, function (id, singleFood) {
                    foodList += getFood(singleFood);
                });
                $("#all-foods").html(foodList);
            }
        });
    }
    getAllFoods()
    $.getScript("/burgerHouse/assets/card/js/main.js", function (data, textStatus, jqxhr) {

        $("#javaScript").append(data);
    });
    $.getScript("/burgerHouse/assets/card/js/util.js", function (data, textStatus, jqxhr) {

        $("#javaScript").append(data);
    });
    /*  $(document).on('click', '#add-to-cart-btn', function (e) {
         e.preventDefault()
         var food_name = $(this).data('name')
         var food_image = $(this).data('image')
         var food_price = $(this).data('price')
         $.ajax({
             url: "/burgerHouse/frontAjax.php",
             method: 'post',
             data: { action: "createSession", foodName: food_name, foodImage: food_image, foodPrice: food_price },
             success: function (data) {
             },
             error: function (request, error) {
                 console.log(request);
             }
         })
 
 
     }) */
    // full the cart 
    var cart = document.getElementsByClassName('js-cd-cart');
    cartBody = cart[0].getElementsByClassName('cd-cart__body')[0]
    cartList = cartBody.getElementsByTagName('ul')[0],
        productId = 0
    function addProduct(product_name, product_image, product_price, uniqueId) {
        var test = 'selected';
        productId = productId + 1;
        var productAdded = `<li class="cd-cart__product"><div class="cd-cart__image"><a href="#0"><img src="dashboard/uploads/${product_image}" alt="placeholder"></a></div><div class="cd-cart__details"><h3 class="truncate">${product_name}</h3><span class="cd-cart__price">$${product_price}</span><div class="cd-cart__actions"><p type="button" class="cd-cart__delete-item"  data-id="${uniqueId}">Delete</p><div class="cd-cart__quantity"><label for="cd-product-' + productId + '">Qty</label><span class="cd-cart__select"><select class="reset" id="cd-product-' + productId + '" name="${uniqueId}" ><option ${test} value="0">0</option><option value="1">1</option><option value="2" >2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option></select><svg class="icon" viewBox="0 0 12 12"><polyline fill="none" stroke="currentColor" points="2,4 6,8 10,4 "/></svg></span></div></div></div></li>`;
        cartList.insertAdjacentHTML('beforeend', productAdded);
    };
    $.getJSON('/burgerHouse/getsession.php', function (data) {
        console.log(data)
        $.each(data.allProducts, function (index, row) {
            if (row.foodName) {
                addProduct(row.foodName, row.foodImage, row.foodPrice, row.uniqueId);
            }
        });
    });
    $(document).on('click', '.cd-cart__delete-item', function () {
        var id = $(this).data('id')
        console.log(id)
        $.ajax({
            url: '/burgerHouse/frontAjax.php',
            method: 'get',
            dataType: 'json',
            data: { action: "deleteChart", index: id },
            success: function (data) {

            }
        })

    })
    $(document).on('click', '.cd-remove-all', function () {
        $.ajax({
            url: '/burgerHouse/frontAjax.php',
            method: 'get',
            dataType: 'json',
            data: { action: "destroyAll" },
            success: function (data) {
                console.log(data);
            },
            error: function (request, error) {
                location.reload();
            }
        })
    })
    $(document).on('submit', '#goToBuy', function (e) {
        // e.preventDefault()
        var totalPrice = $("#total-price").text();
        $("#totalPrice").val(totalPrice);
        // console.log(totalPrice)
        $.ajax({
            url: '/burgerHouse/order.php',
            method: 'post',
            dataType: 'json',
            data: new FormData(this),
            success: function (data) {
                console.log(data);
                Swal.fire(
                    'Good job!',
                    'You clicked the button!',
                    'success'
                )
            },
            error: function (request, error) {
                console.log(request);
            }
        })
    })
    $(document).on('submit', '#findTable', function (e) {
        e.preventDefault();
        $.ajax({
            url: '/burgerHouse/frontAjax.php',
            method: 'post',
            dataType: 'json',
            data: new FormData(this),
            success: function (data) {
                console.log(data);
                Swal.fire(
                    'Good job!',
                    'You clicked the button!',
                    'success'
                )
                // $("#findTable")[0].clear
            },
            error: function (request, error) {
                console.log(request);
            }
        })
    })
    $("#findTable").on('submit', function (e) {
        alert("ok")
        e.preventDefault();
        $.ajax({
            url: '/burgerHouse/frontAjax.php',
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
                    $("#findTable")[0].reset();
                }
            },
            error: function () {
                alert("wrong")

            }
        });
    });

})

