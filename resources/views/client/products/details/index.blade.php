<!-- Start Product Details Area -->
<section class="htc__product__details bg__white ptb--100">
    <!-- Start Product Details Top -->
    <div class="htc__product__details__top">
        <div class="container">
            <div class="row">
                <div class="col-md-5 col-lg-5 col-sm-12 col-xs-12">
                    <div class="htc__product__details__tab__content">
                        @include('client.products.details.imgbig')
                        @include('client.products.details.imgsmall')
                    </div>
                </div>
                <div class="col-md-7 col-lg-7 col-sm-12 col-xs-12 smt-40 xmt-40">
                    <div class="ht__product__dtl">
                        <h2>jean shirt to sassy girl</h2>
                        <h6>Model: <span>MNG001</span></h6>
                        @include('client.products.details.rating')
                        <ul class="pro__prize">
                            <li class="old__prize">$82.5</li>
                            <li>$75.2</li>
                        </ul>
                        <p class="pro__info">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                            nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim
                            veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea
                            commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse
                            molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan</p>
                        @include('client.products.details.detaildesc')
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Product Details Top -->
</section>
<!-- End Product Details Area -->
