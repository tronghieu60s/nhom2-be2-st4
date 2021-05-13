<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminUsersController extends Controller
{

    public function index()
    {
        return view('admin.pages.users.index');
    }

    public function create()
    {
        return view('admin.pages.users.create');
    }

    public function store(Request $request)
    {
        return "create users";
    }

    public function show($id)
    {
        return redirect()->action('AdminUsersController@edit', [$id]);
    }

    public function edit($id)
    {
        return view('admin.pages.users.edit');
    }

    public function update(Request $request, $id)
    {
        return "update users";
    }

    public function destroy($id)
    {
        return "destroy users";
    }
}
