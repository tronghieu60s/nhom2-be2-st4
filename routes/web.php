<?php

use Illuminate\Support\Facades\Route;

Route::get('/', 'HomeController@index');
Route::get('cart', 'CartController@index');
Route::resource('products', 'ProductsController')->only(['index', 'show']);

Route::middleware(['auth-permission'])->group(function () {
    Route::get('sign-in', 'AuthController@signin');
    Route::post('sign-in', 'AuthController@signin_post');
    Route::get('sign-up', 'AuthController@signup');
    Route::post('sign-up', 'AuthController@signup_post');
});

Route::get('logout', 'AuthController@logout');

// request admin with middleware
Route::middleware(['user-permission'])->group(function () {
    Route::prefix('be-admin')->group(function () {
        Route::get('/', 'AdminController@index');
        Route::resource('products', 'AdminProductsController');
        Route::resource('users', 'AdminUsersController');
        Route::resource('taxonomies', 'AdminTaxonomiesController');
        Route::resource('orders', 'AdminOrdersController')
            ->only(['index', 'destroy']);
        Route::resource('comments', 'AdminCommentsController')
            ->only(['index', 'store', 'destroy']);
    });
});

// request not middleware
Route::prefix('be-admin')->group(function () {
    Route::resource('comments', 'AdminCommentsController')
        ->only(['store']);
});
