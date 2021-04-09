<div class="col-md-8">
    <div class="checkout__inner">
        <div class="accordion-list">
            <div class="accordion">
                @include('client.purchase.checkout.checkoutmt')
                @include('client.purchase.checkout.billinginfo')
                @include('client.purchase.checkout.shippinginfo')
                @include('client.purchase.checkout.shippingmt')
                @include('client.purchase.checkout.paymentinfo')
            </div>
        </div>
    </div>
</div>
