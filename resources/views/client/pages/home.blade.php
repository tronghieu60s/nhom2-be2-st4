@extends('layouts.client', ['layout' => 'home', 'title' => 'Home'])

@section('content')

    <section class="htc__category__area ptb--100">
        <div class="container">

            @include('client.home.titlecategory',[
            'title' => 'Sản Phẩm Mới',
            'slogan' => 'Sản phẩm mới nhất mà bạn không thể bỏ qua cho căn nhà của mình.'])

            <div class="htc__product__container">
                <div class="row">
                    <div class="product__list clearfix mt--30">
                        @foreach ($productsNew as $product)
                            @include('client.products.item', ['product' => $product])
                        @endforeach
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
                    @foreach ($productBestSeller as $product)
                        @include('client.products.item', ['product' => $product])
                    @endforeach
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
@endsection
