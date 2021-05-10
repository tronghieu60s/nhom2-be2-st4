<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Product;
use App\User;

class AuthController extends Controller
{
    public function signin()
    {
        return view('auth.pages.signin');
    }

    public function signup()
    {
        return view('auth.pages.signup');
    }

    public function signup_post()
    {
        $username = request("username");
        $password = request("password");
        $repassword = request("repassword");

        $getUser = User::where("user_username", $username);
        if ($getUser == null)
            return redirect()->back()->with('error', 'Tên người dùng đã tồn tại.');

        if ($password !== $repassword)
            return redirect()->back()->with('error', 'Mật khẩu nhập lại không khớp.');

        $newUser = new User;
        $newUser->user_username = $username;
        $newUser->user_password = $password;
        $newUser->save();
        return redirect()->back()->with('success', 'Tạo tài khoản thành công.');
    }
}
