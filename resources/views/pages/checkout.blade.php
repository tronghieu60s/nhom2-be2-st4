@extends('layouts.client', ['title' => 'CheckOut'])

@section('content')
    <div class="checkout-wrap ptb--100">
        <div class="container">
            <div class="row">
                @include('client.purchase.checkout.inner')
                @include('client.purchase.checkout.order')
            </div>
        </div>
    </div>
@endsection
