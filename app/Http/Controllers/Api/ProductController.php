<?php

namespace App\Http\Controllers\Api;

use App\Helper\ApiResponse;
use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function product(){
        $product = Product::with('productToCategory','productToSubcategory','productToBrand','size_color_qty_product','rating')->where('status','=','active')->get();
        return ApiResponse::success($product);
    }

    public function pro_details($id)
    {
        $product = Product::with('productToCategory', 'productToSubcategory', 'productToBrand','size_color_qty_product','rating')->find($id);

        return ApiResponse::success($product);

    }


    public function justLanded()
    {
        $product = Product::with('productToCategory','productToSubcategory','productToBrand','size_color_qty_product','rating')->where('trand_product','=',1)->get();
        if ($product->isEmpty()){
            $data = [];
            return ApiResponse::success($data);
        }
        else{
            return ApiResponse::success($product);
        }
    }


    public function exclusive(){
        $product = Product::with('productToCategory','productToSubcategory','productToBrand','size_color_qty_product','rating')->where('feature_product','=',1)->get();




        if ($product->isEmpty()){
            $data = [];
            return ApiResponse::success($data);
        }
        else{
            return ApiResponse::success($product);
        }
    }
}
