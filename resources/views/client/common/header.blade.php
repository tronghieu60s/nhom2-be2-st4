<header id="htc__header" class="htc__header__area header--one">
    <!-- Start Mainmenu Area -->
    <div id="sticky-header-with-topbar" class="mainmenu__wrap sticky__header">
        <div class="container">
            <div class="row">
                <div class="menumenu__container clearfix">
                    <div class="col-lg-2 col-md-2 col-sm-3 col-xs-5">
                        <div class="logo">
                            <a href="{{ asset('') }}"><img src="{{ asset('client/images/logo/4.png') }}"
                                    alt="logo images"></a>
                        </div>
                    </div>
                    <div class="col-md-7 col-lg-8 col-sm-5 col-xs-3">
                        <nav class="main__menu__nav hidden-xs hidden-sm">
                            <ul class="main__menu">
                                <li class="drop"><a href="{{ asset('') }}">Trang Chủ</a></li>
                                <li class="drop"><a href="{{ asset('products') }}">Tất Cả Sản Phẩm</a></li>
                                <li class="drop"><a href="{{ asset('products?manufacturer=1') }}">Hãng Sản Xuất</a>
                                    <ul class="dropdown">
                                        @foreach ($manufacturers as $manufacturer)
                                            <li><a
                                                    href="{{ asset('products?manufacturer=' . $manufacturer->manufacturer_id) }}">
                                                    {{ $manufacturer->manufacturer_name }}</a></li>
                                        @endforeach
                                    </ul>
                                </li>
                                <li class="drop"><a href="{{ asset('products?category=1') }}">Chuyên Mục</a>
                                    <ul class="dropdown">
                                        @foreach ($categories as $category)
                                            <li><a href="{{ asset('products?category=' . $category->category_id) }}">
                                                    {{ $category->category_name }}</a></li>
                                        @endforeach
                                    </ul>
                                </li>
                                <li class="drop"><a href="/">Liên Hệ</a></li>
                            </ul>
                        </nav>

                        <div class="mobile-menu clearfix visible-xs visible-sm">
                            <nav id="mobile_dropdown">
                                <ul>
                                    <li><a href="{{ asset('') }}">Trang Chủ</a></li>
                                    <li><a href="{{ asset('products') }}">Tất Cả Sản Phẩm</a></li>
                                    <li><a href="{{ asset('products?manufacturer=1') }}">Hãng Sản Xuất</a>
                                        <ul>
                                            @foreach ($manufacturers as $manufacturer)
                                                <li><a
                                                        href="{{ asset('products?manufacturer=' . $manufacturer->manufacturer_id) }}">
                                                        {{ $manufacturer->manufacturer_name }}</a>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </li>
                                    <li><a href="{{ asset('products?category=1') }}">Chuyên Mục</a>
                                        <ul>
                                            @foreach ($categories as $category)
                                                <li><a
                                                        href="{{ asset('products?category=' . $category->category_id) }}">
                                                        {{ $category->category_name }}</a>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </li>
                                    <li><a href="/">Liên Hệ</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-md-3 col-lg-2 col-sm-4 col-xs-4">
                        <div class="header__right">
                            <div class="header__search search search__open">
                                <a href="#"><i class="icon-magnifier icons"></i></a>
                            </div>
                            <div class="header__account">
                                <a href="/sign-in"><i class="icon-user icons"></i></a>
                            </div>
                            <div class="htc__shopping__cart">
                                <a class="cart__menu" href="#"><i class="icon-handbag icons"></i></a>
                                <a href="/cart"><span class="htc__qua">2</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mobile-menu-area"></div>
        </div>
    </div>
    <!-- End Mainmenu Area -->
</header>

@include('client.common.offset.index')
