<?php

namespace App\Http\Controllers;

use App\Comment;
use App\Product;

class AdminCommentsController extends Controller
{
    public function index()
    {
        $comments = Comment::all();
        var_dump($comments[0]->user->user_username);
        var_dump($comments[0]->product->product_name);
        return view('admin.pages.comments.index');
    }

    public function destroy($id)
    {
        return "xóa bình luận " . $id;
    }
}
