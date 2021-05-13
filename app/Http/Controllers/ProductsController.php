<?php

namespace App\Http\Controllers;

use App\Category;
use App\Manufacturer;
use App\Product;

class ProductsController extends Controller
{
    public function index()
    {
        $customView = false;
        // count all products
        $products = Product::orderBy("product_id", "DESC");
        $countAllProduct = Product::all()->count();

        // products sort
        $sort = request()->query("sort");
        if (!$sort) $sort = "default";
        if ($sort === "nameAZ") $products = Product::orderBy("product_name", "ASC");
        if ($sort === "nameZA") $products = Product::orderBy("product_name", "DESC");
        if ($sort === "priceSB") $products = Product::orderBy("product_price", "ASC");
        if ($sort === "priceBS") $products = Product::orderBy("product_price", "DESC");

        // search form
        $search = request()->query("search");
        if ($search) {
            $products = Product::query()
                ->where('product_name', 'LIKE', "%{$search}%")
                ->orWhere('product_description', 'LIKE', "%{$search}%");

            $countAllProduct = $products->count();
            $customView = true;
        }

        // category form
        $category = request()->query("category");
        if ($category) {
            $products = Category::findOrFail($category)->get()[0]->products;

            var_dump($products);
            $countAllProduct = $products->count();
            $customView = true;
        }

        // products pagination
        $perPage = request()->query("perPage");
        if (!$perPage) $perPage = 8;
        $products = $products->paginate($perPage);

        return view('client.pages.products.index', [
            'products' => $products,
            'countAllProduct' => $countAllProduct,
            'perPage' => $perPage,
            'customView' => $customView,
        ]);
    }

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
