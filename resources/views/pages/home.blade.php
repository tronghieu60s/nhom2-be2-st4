<!DOCTYPE html>
<html class="no-js" lang="{{ str_replace('_', '-', app()->getLocale()) }}">

@include('client.base.head')

<body>
    <div class="wrapper">
        @include('client.common.header')
        @include('client.home.slider')

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

        @include('client.home.bestprize')

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

        @include('client.home.testimonial')

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

         @include('client.common.brand')
         @include('client.home.blog')
         
         @include('client.common.footer')
    </div>

    @include('client.base.script')
</body>

</html>
