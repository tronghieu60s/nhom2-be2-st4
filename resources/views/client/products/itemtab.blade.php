<!-- Start List Product -->
<div class="ht__list__product">
    <div class="ht__list__thumb" style="width: 300px;">
        <a href="/products/123"><img src="{{ asset('assets/images/'.$product->product_image) }}"
                alt="product images"></a>
    </div>
    <div class="htc__list__details">
        <h2><a href="/products/123">{{ $product->product_name }}</a></h2>
        <ul class="pro__prize">
            <li>{{  number_format($product->product_price) }} VNĐ</li>
        </ul>
        <ul class="rating">
            <li><i class="icon-star icons"></i></li>
            <li><i class="icon-star icons"></i></li>
            <li><i class="icon-star icons"></i></li>
            <li class="old"><i class="icon-star icons"></i></li>
            <li class="old"><i class="icon-star icons"></i></li>
        </ul>
        <p>{{ substr($product->product_description, 0, 300) }}...</p>
        <div class="fr__list__btn">
            <a class="fr__btn" href="cart.html">Add To Cart</a>
        </div>
    </div>
</div>
<!-- End List Product -->