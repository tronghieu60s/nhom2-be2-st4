<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PurchaseController extends Controller
{
    public function cart()
    {
        return view('client.pages.cart');
    }

    public function checkout()
    {
        return view('client.pages.checkout');
    }

    public function wishlist()
    {
        return view('client.pages.wishlist');
    }
}
