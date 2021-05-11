<div class="ht__pro__desc">
    <div class="sin__desc">
        <p><span>Số lượng còn lại:</span> {{ $product->product_available }} In Stock</p>
    </div>
    <div class="sin__desc align--left">
        <p><span>Nhà sản xuất:</span> {{ $product->manufacturer->manufacturer_name }}</p>
    </div>
    <div class="sin__desc align--left">
        <p><span>Chuyên mục:</span></p>
        <ul class="pro__cat__list">
            @foreach ($product->categories as $category)
                <li><a href="#">{{ $category->category_name }}</a>,</li>
            @endforeach
        </ul>
    </div>
    @include('client.products.details.share')
</div>
