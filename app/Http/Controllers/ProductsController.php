<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductsController extends Controller
{
    public function index()
    {
        return view('pages.products.index');
    }

    public function item($id)
    {
        var_dump($id);
        return view('pages.products.item');
    }
}
