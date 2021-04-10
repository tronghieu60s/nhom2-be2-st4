<!DOCTYPE html>
<html class="no-js" lang="{{ str_replace('_', '-', app()->getLocale()) }}">

@include('client.base.head', ['title' => $title ?? 'No Title'])

<body>
    <div class="wrapper">
        @include('client.common.header')

        @if ($layout ?? 'default' == 'home')
            @yield('content')
        @else
            @include('client.common.bradcaump')
            @yield('content')
            @include('client.common.brand')
        @endif

        @include('client.common.footer')
    </div>

    @include('client.base.script')
</body>

</html>
