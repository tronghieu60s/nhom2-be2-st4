<!DOCTYPE html>
<html class="no-js" lang="{{ str_replace('_', '-', app()->getLocale()) }}">

@include('client.common.head')

<body>
    <div class="wrapper">
        @include('client.common.header')
        @include('client.common.offset')
        @include('client.home.slider')
        <!-- Start Category Area -->
        <section class="htc__category__area ptb--100">
            <div class="container">

                @include('client.home.titlecategory',[ 'title' => 'New Arrivals', 'slogan' => 'But I must explain to
                you how all this mistaken idea'])

                <div class="htc__product__container">
                    <div class="row">
                        <div class="product__list clearfix mt--30">
                            @include('client.products.item')
                            @include('client.products.item')
                            @include('client.products.item')
                            @include('client.products.item')
                            @include('client.products.item')
                            @include('client.products.item')
                            @include('client.products.item')
                            @include('client.products.item')
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Category Area -->

        @include('client.home.bestprize')

        <!-- Start Product Area -->
        <section class="ftr__product__area ptb--100">
            <div class="container">

                @include('client.home.titlecategory', [ 'title' => 'Best Seller', 'slogan' => 'But I must explain to
                you how all this mistaken idea' ])

                <div class="row">
                    <div class="product__wrap clearfix">
                        @include('client.products.item')
                        @include('client.products.item')
                        @include('client.products.item')
                        @include('client.products.item')
                    </div>
                </div>
            </div>
        </section>
        <!-- End Product Area -->

        @include('client.home.testimonial')

        <!-- Start Top Rated Area -->
        <section class="top__rated__area bg__white pt--100 pb--110">
            <div class="container">

                @include('client.home.titlecategory', [ 'title' => 'Top Rated',
                'slogan' => 'But I must explain to you'])

                <div class="row mt--20">
                    @include('client.products.itemrated')
                    @include('client.products.itemrated')
                    @include('client.products.itemrated')
                </div>
            </div>
        </section>
        <!-- End Top Rated Area -->

         @include('client.home.brand')
         @include('client.home.blog')
         @include('client.common.footer')
    </div>

    @include('client.common.script')
</body>

</html>
