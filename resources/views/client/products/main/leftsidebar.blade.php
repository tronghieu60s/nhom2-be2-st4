<div class="col-lg-3 col-lg-pull-9 col-md-3 col-md-pull-9 col-sm-12 col-xs-12 smt-40 xmt-40">
    <div class="htc__product__leftsidebar">
        <div class="htc__category" style="margin-top: 0">
            <h4 class="title__line--4">Hãng sản xuất</h4>
            <ul class="ht__cat__list">
                @foreach ($manufacturers as $manufacturer)
                    <li><a href="#">{{ $manufacturer->manufacturer_name }}</a></li>
                @endforeach
            </ul>
        </div>

        <div class="htc__category">
            <h4 class="title__line--4">Chuyên mục</h4>
            <ul class="ht__cat__list">
                @foreach ($categories as $category)
                    <li><a href="{{ request()->fullUrlWithQuery(['category' => $category->category_id]) }}">
                            {{ $category->category_name }}</a></li>
                @endforeach
            </ul>
        </div>

        <!-- Start Best Sell Area -->
        <div class="htc__recent__product">
            <h2 class="title__line--4">best seller</h2>
            <div class="htc__recent__product__inner">
                <!-- Start Single Product -->
                <div class="htc__best__product">
                    <div class="htc__best__pro__thumb">
                        <a href="product-details.html">
                            <img src="{{ asset('client/images/product-2/sm-smg/1.jpg') }}" alt="small product">
                        </a>
                    </div>
                    <div class="htc__best__product__details">
                        <h2><a href="product-details.html">Product Title Here</a></h2>
                        <ul class="rating">
                            <li><i class="icon-star icons"></i></li>
                            <li><i class="icon-star icons"></i></li>
                            <li><i class="icon-star icons"></i></li>
                            <li class="old"><i class="icon-star icons"></i></li>
                            <li class="old"><i class="icon-star icons"></i></li>
                        </ul>
                        <ul class="pro__prize">
                            <li class="old__prize">$82.5</li>
                            <li>$75.2</li>
                        </ul>
                    </div>
                </div>
                <!-- End Single Product -->
                <!-- Start Single Product -->
                <div class="htc__best__product">
                    <div class="htc__best__pro__thumb">
                        <a href="product-details.html">
                            <img src="{{ asset('client/images/product-2/sm-smg/2.jpg') }}" alt="small product">
                        </a>
                    </div>
                    <div class="htc__best__product__details">
                        <h2><a href="product-details.html">Product Title Here</a></h2>
                        <ul class="rating">
                            <li><i class="icon-star icons"></i></li>
                            <li><i class="icon-star icons"></i></li>
                            <li><i class="icon-star icons"></i></li>
                            <li class="old"><i class="icon-star icons"></i></li>
                            <li class="old"><i class="icon-star icons"></i></li>
                        </ul>
                        <ul class="pro__prize">
                            <li class="old__prize">$82.5</li>
                            <li>$75.2</li>
                        </ul>
                    </div>
                </div>
                <!-- End Single Product -->
                <!-- Start Single Product -->
                <div class="htc__best__product">
                    <div class="htc__best__pro__thumb">
                        <a href="product-details.html">
                            <img src="{{ asset('client/images/product-2/sm-smg/1.jpg') }}" alt="small product">
                        </a>
                    </div>
                    <div class="htc__best__product__details">
                        <h2><a href="product-details.html">Product Title Here</a></h2>
                        <ul class="rating">
                            <li><i class="icon-star icons"></i></li>
                            <li><i class="icon-star icons"></i></li>
                            <li><i class="icon-star icons"></i></li>
                            <li class="old"><i class="icon-star icons"></i></li>
                            <li class="old"><i class="icon-star icons"></i></li>
                        </ul>
                        <ul class="pro__prize">
                            <li class="old__prize">$82.5</li>
                            <li>$75.2</li>
                        </ul>
                    </div>
                </div>
                <!-- End Single Product -->
            </div>
        </div>
        <!-- End Best Sell Area -->
    </div>
</div>
