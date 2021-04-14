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

Route::get('/sign-in', 'AuthController@signin');
Route::get('/sign-up', 'AuthController@signup');

Route::get('/be-admin', 'AdminController@index');
Route::resource('/be-admin/products', 'AdminProductsController');
Route::resource('/be-admin/users', 'AdminUsersController');
