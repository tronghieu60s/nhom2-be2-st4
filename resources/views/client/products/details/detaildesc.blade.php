<div class="ht__pro__desc">
    <div class="sin__desc">
        <p><span>Availability:</span> {{ $product->product_available }} In Stock</p>
    </div>
    <div class="sin__desc align--left">
        <p><span>Manufacturer:</span> {{ $product->manufacturer->manufacturer_name }}</p>
    </div>
    <div class="sin__desc align--left">
        <p><span>Categories:</span></p>
        <ul class="pro__cat__list">
            @foreach ($product->taxonomies as $taxonomy)
                @if ($taxonomy->taxonomy_type === 'category')
                    <li><a href="#">{{ $taxonomy->taxonomy_name }}</a>,</li>
                @endif
            @endforeach
        </ul>
    </div>
    <div class="sin__desc align--left">
        <p><span>Tags:</span></p>
        <ul class="pro__cat__list">
            @foreach ($product->taxonomies as $taxonomy)
                @if ($taxonomy->taxonomy_type === 'tag')
                    <li><a href="#">{{ $taxonomy->taxonomy_name }}</a>,</li>
                @endif
            @endforeach
        </ul>
    </div>
    @include('client.products.details.share')
</div>
