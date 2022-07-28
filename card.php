<div class="cd-cart cd-cart--empty js-cd-cart">
    <a href="" class="cd-cart__trigger text-replace">

        <ul class="cd-cart__count">
            <!-- cart items count -->
            <li>0</li>
            <li>0</li>
        </ul> <!-- .cd-cart__count -->
    </a>

    <div class="cd-cart__content">
        <div class="cd-cart__layout">
            <header class="cd-cart__header">
                <h2>Cart</h2>
                <button style="border:none;background:none" type="submit" class="cd-remove-all">Remove All</button>
            </header>
            <!-- <form> -->
            <div class="cd-cart__body">
                <ul id="full-chart">
                    <!-- products added to the cart will be inserted here using JavaScript -->
                </ul>
            </div>

            <footer class="cd-cart__footer">
                <a href="" class="cd-cart__checkout">
                    <em>Checkout - $<span id="total-price">0</span>
                        <svg class="icon icon--sm" viewBox="0 0 24 24">
                            <g fill="none" stroke="currentColor">
                                <line stroke-width="2" stroke-linecap="round" stroke-linejoin="round" x1="3" y1="12"
                                    x2="21" y2="12" />
                                <polyline stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                    points="15,6 21,12 15,18 " />
                            </g>
                        </svg>
                    </em>
                </a>
            </footer>
            <!-- </form> -->
        </div>
    </div> <!-- .cd-cart__content -->
</div> <!-- cd-cart -->