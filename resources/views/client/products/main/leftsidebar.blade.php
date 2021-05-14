<div class="col-lg-3 col-lg-pull-9 col-md-3 col-md-pull-9 col-sm-12 col-xs-12 smt-40 xmt-40">
    <div class="htc__product__leftsidebar">
        <div class="htc__category" style="margin-top: 0">
            <h4 class="title__line--4">Hãng sản xuất</h4>
            <ul class="ht__cat__list">
                @foreach ($manufacturers as $manufacturer)
                    <li><a href="{{ asset('/products?manufacturer=' . $manufacturer->manufacturer_id) }}">
                            {{ $manufacturer->manufacturer_name }}</a></li>
                @endforeach
            </ul>
        </div>

        <div class="htc__category">
            <h4 class="title__line--4">Chuyên mục</h4>
            <ul class="ht__cat__list">
                @foreach ($categories as $category)
                    <li><a href="{{ asset('/products?category=' . $category->category_id) }}">
                            {{ $category->category_name }}</a></li>
                @endforeach
            </ul>
        </div>

        <div class="htc__recent__product">
            <h2 class="title__line--4">Sản Phẩm Mới Nhất</h2>
            @foreach ($newProducts as $product)
                <div class="htc__recent__product__inner">
                    <div class="htc__best__product">
                        <div class="htc__best__pro__thumb">
                            <a href="{{ asset('products/' . $product->product_id) }}">
                                <img src="{{ asset('assets/images/' . $product->product_image) }}" alt="small product">
                            </a>
                        </div>
                        <div class="htc__best__product__details">
                            <h2><a href="{{ asset('products/' . $product->product_id) }}">{{ $product->product_name }}</a></h2>
                            <ul class="pro__prize">
                                <li>{{ number_format($product->product_price) }} VNĐ</li>
                            </ul>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>
