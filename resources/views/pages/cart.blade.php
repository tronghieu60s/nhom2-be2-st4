@extends('layouts.client', ['title' => 'Cart'])

@section('content')
    <div class="cart-main-area ptb--100 bg__white">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <form action="#">
                        <div class="table-content table-responsive">
                            <table>
                                <thead>
                                    <tr>
                                        <th class="product-thumbnail">products</th>
                                        <th class="product-name">name of products</th>
                                        <th class="product-price">Price</th>
                                        <th class="product-quantity">Quantity</th>
                                        <th class="product-subtotal">Total</th>
                                        <th class="product-remove">Remove</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        @include('client.purchase.cart.item')
                                    </tr>
                                    <tr>
                                        @include('client.purchase.cart.item')
                                    </tr>
                                    <tr>
                                        @include('client.purchase.cart.item')
                                    </tr>
                                    <tr>
                                        @include('client.purchase.cart.item')
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        @include('client.purchase.cart.bottom')
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
