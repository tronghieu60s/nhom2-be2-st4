<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminTaxonomiesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.pages.taxonomies.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(request()->query("type") == "manufacturer") {
            // làm hãng sx trong này
            return view('admin.pages.taxonomies.create-manufacturer');
        }

        if (request()->query("type") == "category") {
            // làm loại trong này
            return view('admin.pages.taxonomies.create-category');
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store()
    {
        if (request("type") == "manufacturer") {
            // làm hãng sx trong này
            return "tạo nhà sx";
        }

        if (request("type") == "category") {
            // làm loại trong này
            return "tạo loại";
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return redirect()->action('AdminTaxonomiesController@edit', [$id]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if (request()->query("type") == "manufacturer") {
            // làm hãng sx trong này
            return view('admin.pages.taxonomies.edit-manufacturer');
        }

        if (request()->query("type") == "category") {
            // làm loại trong này
            return view('admin.pages.taxonomies.edit-category');
        }
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
        if (request("type") == "manufacturer") {
            // làm hãng sx trong này
            return "cập nhật nhà sx";
        }

        if (request("type") == "category") {
            // làm loại trong này
            return "cập nhật loại";
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if (request("type") == "manufacturer") {
            // làm hãng sx trong này
            return "xóa nhà sx";
        }

        if (request("type") == "category") {
            // làm loại trong này
            return "xóa loại";
        }
    }
}
