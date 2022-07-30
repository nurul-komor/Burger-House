<!-- Edit modal -->

<div class="modal fade" id="edit-food">
    <div class=" modal-dialog modal-xl">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Modal Heading</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <form action="" id="edit-food-form" method="post">
                    <div class="row">
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="food-name" class="form-label">Food Name</label>
                                <input type="text" class="form-control" name="foodName" id="food-name">
                            </div>
                            <div class="mb-3">
                                <label for="food-title" class="form-label">Title</label>
                                <input type="text" class="form-control" name="foodTitle" id="food-title">
                            </div>
                            <div class="mb-3">
                                <label for="food-itmes" class="form-label">Items</label>
                                <input type="text" class="form-control" name="foodItems" id="food-itmes">
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="food-price-old" class="form-label">Normal Price</label>
                                <input type="text" class="form-control" name="foodPriceOld" id="food-price-old">
                            </div>
                            <div class="mb-3">
                                <label for="food-price-new" class="form-label">New Price</label>
                                <input type="text" class="form-control" name="foodPriceNew" id="food-price-new">
                            </div>
                            <div class="mb-3">
                                <label for="food-Image" class="form-label">Add Image</label>
                                <input type="file" class="form-control" name="foodImage" id="food-Image">
                            </div>
                            <input type="text" name="action" value="edit_food" id="">
                            <input type="text" name="" id="edit_id">
                        </div>
                    </div>
                </form>
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary" data-bs-dismiss="modal">Submit</button>
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
            </div>

        </div>
    </div>
</div>