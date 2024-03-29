<?php

namespace App\Http\Controllers\Api;

use App\Helper\ApiResponse;
use App\Http\Controllers\Controller;
use App\Models\FavouriteProduct;
use Illuminate\Http\Request;

class FavouriteProductController extends Controller
{
    public function favproduct(Request $request){
        $request->validate([
           'product_id'=>'required|integer'
        ]);

        $fv = FavouriteProduct::where('user_id',auth()->user()->id)->where('product_id','=',$request->product_id)->first();
        if ($fv==null){
            $f = new FavouriteProduct();
            $f->user_id = auth()->user()->id;
            $f->product_id = $request->product_id;
            $f->save();

            return  ApiResponse::success($f);

        }else{
            return ApiResponse::dataExsits();
        }
    }

    public function favproductlist(){
        $products = FavouriteProduct::with('products.productToBrand','products.productToCategory','products.productToSubcategory', 'products.size_color_qty_product','products.rating')->where('user_id','=',auth()->user()->id)->get();

        if ($products -> isEmpty()){
            $data = [];
            return ApiResponse::success($data);
        }
        else{
            return ApiResponse::success($products);
        }
    }

    public function remove($id){
        $fav = FavouriteProduct::find($id);
        $fav->delete();
        $data = [];
        return ApiResponse::success($data);
    }
}
