<?php

namespace App\Http\Controllers;

class AdminOrdersController extends Controller
{
    public function index()
    {
        return view('admin.pages.orders.index');
    }

    public function destroy($id)
    {
        return "xóa đơn đặt hàng " . $id;
    }
}
