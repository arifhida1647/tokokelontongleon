<?php

namespace App\Controllers;

use App\Models\ModelItems;

class Test extends BaseController
{
    public function index()
    {
        return view('test_view');
    }
}
