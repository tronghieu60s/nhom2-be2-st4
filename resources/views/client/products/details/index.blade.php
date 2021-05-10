<!-- Start Product Details Area -->
<section class="htc__product__details bg__white ptb--100">
    <!-- Start Product Details Top -->
    <div class="htc__product__details__top">
        <div class="container">
            <div class="row">
                <div class="col-md-5 col-lg-5 col-sm-12 col-xs-12">
                    <div class="htc__product__details__tab__content">
                        @include('client.products.details.imgbig')
                    </div>
                </div>
                <div class="col-md-7 col-lg-7 col-sm-12 col-xs-12 smt-40 xmt-40">
                    <div class="ht__product__dtl">
                        <h2 style="margin-bottom: 10px">{{ $product->product_name }}</h2>
                        @include('client.products.details.rating')
                        <ul class="pro__prize">
                            <li>${{ $product->product_price }}</li>
                        </ul>
                        <p class="pro__info">{{ substr($product->product_description, 0, 100) }}...</p>
                        @include('client.products.details.detaildesc')
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Product Details Top -->
</section>
<!-- End Product Details Area -->