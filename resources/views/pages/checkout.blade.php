<!DOCTYPE html>
<html class="no-js" lang="{{ str_replace('_', '-', app()->getLocale()) }}">

@include('client.base.head')

<body>
    <div class="wrapper">
        @include('client.common.header')
        @include('client.products.bradcaump')

        <div class="checkout-wrap ptb--100">
            <div class="container">
                <div class="row">
                    @include('client.purchase.checkout.inner')
                    @include('client.purchase.checkout.order')
                </div>
            </div>
        </div>

        @include('client.common.brand')
        @include('client.common.footer')
    </div>

    @include('client.base.script')
</body>

</html>
