<header id="htc__header" class="htc__header__area header--one">
    <!-- Start Mainmenu Area -->
    <div id="sticky-header-with-topbar" class="mainmenu__wrap sticky__header">
        <div class="container">
            <div class="row">
                <div class="menumenu__container clearfix">
                    <div class="col-lg-2 col-md-2 col-sm-3 col-xs-5">
                        <div class="logo">
                            <a href="/"><img src="{{ asset('client/images/logo/4.png') }}" alt="logo images"></a>
                        </div>
                    </div>
                    <div class="col-md-7 col-lg-8 col-sm-5 col-xs-3">
                        <nav class="main__menu__nav hidden-xs hidden-sm">
                            <ul class="main__menu">
                                <li class="drop"><a href="/">Trang Chủ</a></li>
                                <li class="drop"><a href="/products">Tất Cả Sản Phẩm</a></li>
                                <li class="drop"><a href="/products">Hãng Sản Xuất</a>
                                    <ul class="dropdown">
                                        @foreach ($manufacturers as $manufacturer)
                                            <li><a href="/products">{{ $manufacturer->manufacturer_name }}</a></li>
                                        @endforeach
                                    </ul>
                                </li>
                                <li class="drop"><a href="/products">Chuyên Mục</a>
                                    <ul class="dropdown">
                                        @foreach ($categories as $category)
                                            <li><a href="/products">{{ $category->category_name }}</a></li>
                                        @endforeach
                                    </ul>
                                </li>
                                <li class="drop"><a href="/">Liên Hệ</a></li>
                            </ul>
                        </nav>

                        <div class="mobile-menu clearfix visible-xs visible-sm">
                            <nav id="mobile_dropdown">
                                <ul>
                                    <li><a href="/">Trang Chủ</a></li>
                                    <li><a href="/">Tất Cả Sản Phẩm</a></li>
                                    <li><a href="/">Hãng Sản Xuất</a>
                                        <ul>
                                            @foreach ($manufacturers as $manufacturer)
                                                <li><a href="blog.html">{{ $manufacturer->manufacturer_name }}</a>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </li>
                                    <li><a href="/">Chuyên Mục</a>
                                        <ul>
                                            @foreach ($categories as $category)
                                                <li><a href="blog.html">{{ $category->category_name }}</a>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </li>
                                    <li><a href="contact.html">Liên Hệ</a></li>
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
