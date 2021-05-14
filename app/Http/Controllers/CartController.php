<?php

namespace App\Http\Controllers;

use App\Product;

class CartController extends Controller
{
    public function index()
    {
        $product = request()->query("product");

        if ($product) {
            $increase = request()->query("increase");
            $decrease = request()->query("decrease");
            $remove = request()->query("remove");

            $cartProducts = session()->get(".cart_products");
            if (!isset($cartProducts[$product]))
                $cartProducts[$product] = 0;
            if ($increase) $cartProducts[$product] += $increase;
            if ($decrease) {
                if ($cartProducts[$product] === 1) unset($cartProducts[$product]);
                else $cartProducts[$product] -= $decrease;
            }
            if ($remove) unset($cartProducts[$product]);

            session()->put(".cart_products", $cartProducts);
            return redirect("/cart");
        }

        return view('client.pages.cart');
    }
}
