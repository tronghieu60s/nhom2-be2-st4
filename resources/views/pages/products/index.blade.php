<!DOCTYPE html>
<html class="no-js" lang="{{ str_replace('_', '-', app()->getLocale()) }}">

@include('client.base.head')

<body>
    <div class="wrapper">
        @include('client.common.header')
        @include('client.products.bradcaump')

        <section class="htc__product__grid bg__white ptb--100">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-lg-push-3 col-md-9 col-md-push-3 col-sm-12 col-xs-12">
                        <div class="htc__product__rightidebar">
                            @include('client.products.main.gridtop')
                            <!-- Start Product View -->
                            <div class="row">
                                <div class="shop__grid__view__wrap">
                                    <div role="tabpanel" id="grid-view"
                                        class="single-grid-view tab-pane fade in active clearfix">
                                        @include('client.products.item')
                                        @include('client.products.item')
                                        @include('client.products.item')
                                        @include('client.products.item')
                                        @include('client.products.item')
                                        @include('client.products.item')
                                        @include('client.products.item')
                                        @include('client.products.item')
                                        @include('client.products.item')
                                        @include('client.products.item')
                                        @include('client.products.item')
                                        @include('client.products.item')
                                    </div>
                                    @include('client.products.main.tabpanel')
                                </div>
                            </div>
                            <!-- End Product View -->
                        </div>
                        @include('client.products.main.pagination')
                    </div>
                    @include('client.products.main.leftsidebar')
                </div>
            </div>
        </section>

        @include('client.common.brand')
        @include('client.common.footer')
    </div>

    @include('client.base.script')
</body>

</html>
