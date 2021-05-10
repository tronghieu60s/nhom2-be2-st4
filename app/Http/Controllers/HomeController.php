<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Product;

class HomeController extends Controller
{
    public function index()
    {
        $productsNew = Product::all()->take(8);
        $productBestSeller = Product::all()->take(4);
        return view('client.pages.home', [
            'productsNew' => $productsNew,
            'productBestSeller' => $productBestSeller
        ]);
    }
}
