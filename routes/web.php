<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'HomeController@index');
Route::get('/cart', 'PurchaseController@cart');
Route::get('/checkout', 'PurchaseController@checkout');
Route::get('/wishlist', 'PurchaseController@wishlist');
Route::resource('/products', 'ProductsController')->only(['index', 'show']);

Route::get('/sign-in', 'AuthController@signin')->middleware('auth-permission');
Route::post('/sign-in', 'AuthController@signin_post')->middleware('auth-permission');
Route::get('/sign-up', 'AuthController@signup')->middleware('auth-permission');
Route::post('/sign-up', 'AuthController@signup_post')->middleware('auth-permission');
Route::get('/logout', function () {
    session()->forget('.config_user');
    return redirect("/sign-in");
});

Route::get('/be-admin', function () {
    return redirect("/be-admin/products");
});
Route::resource('/be-admin/products', 'AdminProductsController')->middleware('user-permission');
Route::resource('/be-admin/users', 'AdminUsersController')->middleware('user-permission');
Route::resource('/be-admin/taxonomies', 'AdminTaxonomiesController')->middleware('user-permission');
Route::resource('/be-admin/orders', 'AdminOrdersController')->middleware('user-permission');
Route::resource('/be-admin/comments', 'AdminCommentsController')->middleware('user-permission');
