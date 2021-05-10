<div class="ht__pro__desc">
    <div class="sin__desc">
        <p><span>Availability:</span> {{ $product->product_available }} In Stock</p>
    </div>
    <div class="sin__desc align--left">
        {{-- <p><span>Manufacturer:</span> {{ $product->manufacturer->manufacturer_name }}</p> --}}
    </div>
    <div class="sin__desc align--left">
        <p><span>Categories:</span></p>
        <ul class="pro__cat__list">
            {{ $product->categories }}
            <li><a href="#">Fashion,</a></li>
            <li><a href="#">Accessories,</a></li>
            <li><a href="#">Women,</a></li>
            <li><a href="#">Men,</a></li>
            <li><a href="#">Kid,</a></li>
            <li><a href="#">Mobile,</a></li>
            <li><a href="#">Computer,</a></li>
            <li><a href="#">Hair,</a></li>
            <li><a href="#">Clothing,</a></li>
        </ul>
    </div>
    <div class="sin__desc align--left">
        <p><span>Tags:</span></p>
        <ul class="pro__cat__list">
            <li><a href="#">Fashion,</a></li>
            <li><a href="#">Accessories,</a></li>
            <li><a href="#">Women,</a></li>
            <li><a href="#">Men,</a></li>
            <li><a href="#">Kid,</a></li>
        </ul>
    </div>
    @include('client.products.details.share')
</div>