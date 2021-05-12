<?php

namespace App\Http\Controllers;

use App\Categorizable;
use App\Category;
use App\Manufacturer;
use App\Product;
use Illuminate\Http\Request;

class AdminProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::all()->reverse();

        $search = request()->query("search");
        if ($search) $products = Product::query()
            ->where('product_name', 'LIKE', "%{$search}%")
            ->orWhere('product_description', 'LIKE', "%{$search}%")
            ->get();

        return view('admin.pages.products.index', ['products' => $products]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $manufacturers = Manufacturer::all();
        $categories = Category::all();
        return view('admin.pages.products.create', [
            'manufacturers' => $manufacturers,
            'categories' => $categories
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $name = request("name");
        $manufacturer = request("manufacturer");
        $categories = request("categories");
        $description = request("description");
        $price = request("price");
        $available = request("available");
        $image = $request->file('image');
        $image && $image->move('assets/images', $image->getClientOriginalName());

        $product = new Product;
        $product->product_name = $name;
        $product->manufacturer_id = $manufacturer;
        $product->product_description = $description;
        $product->product_price = $price;
        $product->product_available = $available;
        $product->product_image = $image && $image->getClientOriginalName();
        $product->save();
        $product = $product->fresh();

        if ($categories)
            for ($i = 0; $i < count($categories); $i++) {
                $categorizable = new Categorizable;
                $categorizable->category_id = $categories[$i];
                $categorizable->product_id = $product->product_id;
                $categorizable->save();
            }

        return redirect("/be-admin/products");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return redirect()->action('AdminProductsController@edit', [$id]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $product = Product::where("product_id", $id)->get()[0];
        $manufacturers = Manufacturer::all();
        $categories = Category::all();
        return view('admin.pages.products.edit', [
            'product' => $product,
            'manufacturers' => $manufacturers,
            'categories' => $categories
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $name = request("name");
        $manufacturer = request("manufacturer");
        $categories = request("categories");
        $description = request("description");
        $price = request("price");
        $available = request("available");
        $image = $request->file('image');
        $image && $image->move('assets/images', $image->getClientOriginalName());

        $product = Product::find($id);
        $name && $product->product_name = $name;
        $manufacturer && $product->manufacturer_id = $manufacturer;
        $description && $product->product_description = $description;
        $price && $product->product_price = $price;
        $available && $product->product_available = $available;
        $image && $product->product_image =  $image->getClientOriginalName();
        $product->save();

        Categorizable::where("product_id", $id)->delete();
        // error_log(json_encode($categories));
        if ($categories)
            for ($i = 0; $i < count($categories); $i++) {
                $categorizable = new Categorizable;
                $categorizable->category_id = $categories[$i];
                $categorizable->product_id = $product->product_id;
                $categorizable->save();
            }
        return redirect("/be-admin/products/".$id."/edit");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Categorizable::where("product_id", $id)->delete();
        Product::where("product_id", $id)->delete();
        return redirect("/be-admin/products");
    }
}
