<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Product;

class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::all();
        return view('client.pages.products.index', ['products' => $products]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product = Product::findOrFail($id);
        $productsRelated = Product::where("manufacturer_id", $product->manufacturer_id)->get()->take(4);
        return view('client.pages.products.show', [
            'product' => $product,
            'productsRelated' => $productsRelated
        ]);
    }
}
