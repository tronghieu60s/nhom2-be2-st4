<?php

namespace App\Http\Controllers;

use App\Category;
use App\Manufacturer;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\View;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    protected $manufacturers;
    protected $categories;

    public function __construct()
    {
        $this->manufacturers = Manufacturer::all();
        View::share('manufacturers', $this->manufacturers);

        $this->categories = Category::all();
        View::share('categories', $this->categories);
    }
}
