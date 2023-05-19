<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests;
use Session;
use App\Models\Slider;
use Illuminate\Support\Facades\Redirect;
session_start();

class HomeController extends Controller
{
    public function index() {
        $slider = Slider::orderBy('slider_id', 'DESC')->where('slider_status','1')->take(4)->get();
        $all_product = DB::table('tbl_product')->where('product_hot_status','0')->orderby('product_id','desc')->limit(6)->get();
        return view('pages.home')->with('all_product',$all_product)->with('slider',$slider);
    }
    
}
