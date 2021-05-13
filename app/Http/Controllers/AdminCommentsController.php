<?php

namespace App\Http\Controllers;

class AdminCommentsController extends Controller
{
    public function index()
    {
        return view('admin.pages.comments.index');
    }

    public function destroy($id)
    {
        return "xóa bình luận " . $id;
    }
}
