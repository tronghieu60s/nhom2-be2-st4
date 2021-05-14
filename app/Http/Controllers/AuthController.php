<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Product;
use App\User;

class AuthController extends Controller
{

    public function logout()
    {
        session()->forget('.config_user');
        return redirect()->back();
    }

    public function signin()
    {
        return view('auth.pages.signin');
    }

    public function signin_post()
    {
        $username = request("username");
        $password = request("password");
        $user = User::where("user_username", $username)->get()[0];
        if ($user->user_password != $password)
            return redirect()->back()->with('error', 'Mật khẩu không chính xác.');

        session(['.config_user' => $user]);

        return redirect("/be-admin");
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

        $getUsers = User::where("user_username", $username)->get();
        if (count($getUsers) > 0)
            return redirect()->back()->with('error', 'Tên người dùng đã tồn tại.');

        if ($password != $repassword)
            return redirect()->back()->with('error', 'Mật khẩu nhập lại không khớp.');

        $newUser = new User;
        $newUser->user_username = $username;
        $newUser->user_password = $password;
        $newUser->save();
        return redirect()->back()->with('success', 'Tạo tài khoản thành công.');
    }
}
