<!-- Start Single Category -->
<div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
    <div class="category" style="height: 390px;">
        <div class="ht__cat__thumb" style="height: 300px; display: flex; justify-content: center; align-items: center;">
            <a href="{{ asset('products/'.$product->product_id) }}" style="height: 100%; display: flex; align-items: center;"> 
                <img src="{{ asset('assets/images/'.$product->product_image) }}" alt="product images">
            </a>
        </div>
        <div class="fr__hover__info">
            <ul class="product__action">
                <li><a href="wishlist.html"><i class="icon-heart icons"></i></a></li>
                <li><a href="cart.html"><i class="icon-handbag icons"></i></a></li>
                <li><a href="#"><i class="icon-shuffle icons"></i></a></li>
            </ul>
        </div>
        <div class="fr__product__inner">
            <h4><a href="product-details.html">{{ $product->product_name }}</a></h4>
            <ul class="fr__pro__prize">
                <li>${{ $product->product_price }}</li>
            </ul>
        </div>
    </div>
</div>
<!-- End Single Category -->