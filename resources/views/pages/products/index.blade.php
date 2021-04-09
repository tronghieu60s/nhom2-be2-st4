<!DOCTYPE html>
<html class="no-js" lang="{{ str_replace('_', '-', app()->getLocale()) }}">

@include('client.base.head')

<body>
    <div class="wrapper">
        @include('client.common.header')
        @include('client.common.offset.index')

        @include('client.products.bradcaump')
        @include('client.products.index')

        @include('client.common.brand')
        @include('client.common.footer')
    </div>

    @include('client.base.script')
</body>

</html>
