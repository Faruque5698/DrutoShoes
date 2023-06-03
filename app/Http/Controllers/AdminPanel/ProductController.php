<?php

namespace App\Http\Controllers\AdminPanel;

use Auth;
use Carbon\Carbon;
use App\Models\Size;
use App\Models\Brand;
use App\Models\Color;
use App\Models\Product;
use App\Models\Category;
use App\Models\TempData;
use App\Models\Subcategory;
use Illuminate\Support\Str;
use App\Models\ColorSizeQty;
use App\Models\StockProduct;
use Illuminate\Http\Request;
use App\Models\GalleryProduct;
use App\Http\Controllers\Controller;
use App\Models\ColorPerSize;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Auth as E;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::with('color_per_size')->orderBy('id','DESC')->get();

        //return $products;
        return view('AdminPanel.Product.product', compact('products'));
    }

    public function add()
    {


        $categories = Category::all();
        $brands = Brand::all();
        $sizes = Size::all();
        $colors = Color::all();
        return view('AdminPanel.Product.add_product',[
            "categories" => $categories,
            "sizes" => $sizes,
            "colors" => $colors,
            "brands" => $brands,
        ]);



    }

    public function getSubId(Request $request)
    {

       $category_id = Subcategory::where('category_id', $request->cat_id)->get();
       $output =   '<option value="" selected>-----Select  Subategory------</option>';
       foreach ($category_id as $subcategory) {
        echo $output = '<option  value="'.$subcategory->id.'">'.$subcategory->title.'</option>';

       }


    }

    public function storeColorSize(Request $request)
    {


        $ext = TempData::where('size_id',$request->size_id)->first();

        if(empty($ext)){
            $temp_data = new TempData();
            $temp_data->user_id = auth()->user()->id;
            $temp_data->size_id = $request->size_id;
            $temp_data->size_name = $request->size_text;
            $temp_data->quantity = $request->size_color_qty ?? 1;
            $temp_data->save();
        }


        $datas = TempData::where('user_id', auth()->user()->id)->get();




        $row = "<div class='form-row mb-1 mt-1'><div class='col-4'><input type='text' value='' class='form-control' disabled></div><div class='col-4'><input type='text' value='' class='form-control' disabled></div><div class='col-2'><input type='number' value='' class='form-control' disabled></div><div class='col-2 text-center'><button id='remove' class='ml-2 btn btn-danger w-100'>remove</button></div></div>";


        foreach($datas as $data){
            echo $row = "<div class='form-row mb-1 mt-1'><div class='col-5'><input type='text' value='".$data->size_name."' class='form-control' disabled></div><div class='col-5'><input type='number' id='subQunatity' value='".$data->quantity."' class='form-control' disabled></div><div class='col-2 text-center'><button type='button' id='remove' value='".$data->id."' class=' btn btn-danger w-100'>remove</button></div></div>";
        }





    }

    public function deleteColorSize($id)
    {

        $tem_data = TempData::find($id);

        $tem_data->delete();


        $datas = TempData::where('user_id', auth()->user()->id)->get();
        $row = "<div class='form-row mb-1 mt-1'><div class='col-5'><input type='text' value='' class='form-control' disabled></div><div class='col-5'><input type='text' value='' class='form-control' disabled></div><div class='col-2'><input type='number' value='' class='form-control' disabled></div><div class='col-2 text-center'><button type='button' id='remove' class='ml-2 btn btn-danger w-100'>remove</button></div></div>";


        foreach($datas as $data){
            echo $row = "<div class='form-row mb-1 mt-1'><div class='col-5'><input type='text' value='".$data->size_name."' class='form-control' disabled></div><div class='col-5'><input type='number' id='subQunatity' value='".$data->quantity."' class='form-control' disabled></div><div class='col-2 text-center'><button type='button' id='remove' value='".$data->id."' class=' btn btn-danger w-100'>remove</button></div></div>";
        }


    }

    public function varientDelete()
    {
        Tempdata::truncate();

        $datas = TempData::get();
        $row = "<div class='form-row mb-1 mt-1'><div class='col-5'><input type='text' value='' class='form-control' disabled></div><div class='col-5'><input type='text' value='' class='form-control' disabled></div><div class='col-2'><input type='number' value='' class='form-control' disabled></div><div class='col-2 text-center'><button type='button' id='remove' class='ml-2 btn btn-danger w-100'>remove</button></div></div>";


        foreach($datas as $data){
            echo $row = "<div class='form-row mb-1 mt-1'><div class='col-5'><input type='text' value='".$data->size_name."' class='form-control' disabled></div><div class='col-5'><input type='text' value='".$data->color_name."' class='form-control' disabled></div><div class='col-2'><input type='number' id='subQunatity' value='".$data->quantity."' class='form-control' disabled></div><div class='col-2 text-center'><button type='button' id='remove' value='".$data->id."' class=' btn btn-danger w-100'>remove</button></div></div>";
        }

    }

    public function updateQunatity()
    {
        $total = TempData::sum('quantity');
        return $total;
    }







    public function store(Request $request)
    {

        $this->validate($request, [
            'product_name' => 'required',
            'price' => 'required',
            'discription' => 'required',
            'image' => 'required',
        ]);

        $total_quantity = TempData::sum('quantity');
        $slug_name =  Str::slug(Str::lower($request->product_name));
        $sku = "PRO"."-"."BD"."-".rand(11111,99999);
        $total_price = $total_quantity * intval($request->discount_price);

        if ($request->hasFile('image')){
            $galleryImages = [];
            $product_image = $request->file('image');
            $ext = $product_image->getClientOriginalExtension();
            $imageName = time().'-'.'.'.$ext;
            $directory = 'assets/images/product/';
            $imageUrl = $directory.$imageName;
            $product_image -> move($directory,$imageName);

            $galleryImages[]  = $imageUrl;


            if ($request->hasFile('image1')) {
                $product_image = $request->file('image1');
                $ext = $product_image->getClientOriginalExtension();
                $imageName1 = time().'-1'.'.'.$ext;
                $directory = 'assets/images/product/';
                $imageUrl1 = $directory.$imageName1;
                $product_image ->move($directory,$imageName1);



            $galleryImages[]  = $imageUrl1;
            }
            if ($request->hasFile('image2')) {
                $product_image = $request->file('image2');
                $ext = $product_image->getClientOriginalExtension();
                $imageName2 = time().'-2'.'.'.$ext;
                $directory = 'assets/images/product/';
                $imageUrl2 = $directory.$imageName2;
                $product_image ->move($directory,$imageName2);

                $galleryImages[]  = $imageUrl2;

            }
            if ($request->hasFile('image3')) {
                $product_image = $request->file('image3');
                $ext = $product_image->getClientOriginalExtension();
                $imageName3 = time().'-3'.'.'.$ext;
                $directory = 'assets/images/product/';
                $imageUrl3 = $directory.$imageName3;
                $product_image ->move($directory,$imageName3);


                $galleryImages[]  = $imageUrl3;

            }

            if ($product_image) {
               $product_id = Product::insertGetId([
                    'user_id' => auth()->user()->id,
                    'product_name' => $request->product_name,
                    'brand_id' => $request->brand_id,
                    'category_id' => $request->category_id,
                    'subcategory_id' => $request->subcategory_id,
                    'discount_rate' => $request->discount_rate,
                    'price' => intval($request->price),
                    'quantity' => $total_quantity,
                    'discount_price' => $request->discount_price,
                    'discription' => $request->discription,
                    'image' => $imageUrl,
                    'images' => json_encode($galleryImages),
                    'slug' => $slug_name,
                    'sku' => $sku,
                    'total_price' =>$total_price,
                    'status' => $request->status,
                    'created_at' => Carbon::now(),
                ]);

                if ($product_id) {

                       $color_sizes = TempData::all();

                       if (!$color_sizes) {

                       }else{
                            foreach($color_sizes as $color_size){
                                $color_size_qty = new ColorSizeQty();
                                $color_size_qty->product_id = $product_id;
                                $color_size_qty->size_id = $color_size['size_id'];
                                $color_size_qty->size_name = $color_size['size_name'];
                                $color_size_qty->size_color_qty = $color_size['quantity'];
                                $color_size_qty->save();
                            }

                            $stock_product = new StockProduct();
                            $stock_product->product_id = $product_id;
                            $stock_product->total_qty = $total_quantity;
                            $stock_product->last_qty = $total_quantity;
                            $stock_product->sale_qty = 0;
                            $stock_product->save();
                       }

                }

            }

        }

        $temp_datas = TempData::where('user_id', auth()->user()->id)->get();

        foreach($temp_datas as $temp_item){
            $temp_item->delete();
        }


        return redirect()->route('admin.product')->with('message', 'Product Uplopad Successfully');
    }



    public function show($id)
    {

        $single_product = Product::with('size_color_qty_product')->find($id);

        //return $single_product;
        return view('AdminPanel.Product.single_view_product', compact('single_product'));
    }

    public function status($id)
    {
        $product_status = Product::find($id);

        if ($product_status->status == 'active') {
            Product::where('id',$product_status->id)->update([
                'status' => 'inactive',
            ]);
            return back()->with('message', 'Product Inactive Successfully');
        }else{
            Product::where('id',$product_status->id)->update([
                'status' => 'active',
            ]);
            return back()->with('message', 'Product Active Successfully');
        }

    }

    public function futurs($id)
    {
        $feature = Product::find($id);

        if ($feature->feature_product == 0) {
            Product::where('id', $feature->id)->update([
                'feature_product' => 1,
            ]);
            return back()->with('message', 'Feature Product Add Successfully');
        }else{
            Product::where('id',$feature->id)->update([
               'feature_product' => 0,
            ]);
            return back()->with('message', 'Feature Product Remove Successfully');
        }

    }

    public function trands($id)
    {
       $trand = Product::find($id);

        if ($trand->trand_product == 0) {
            Product::where('id', $trand->id)->update([
                'trand_product' => 1,
            ]);
            return back()->with('message', 'Just Landed Product Add Successfully');
        }else{
            Product::where('id',$trand->id)->update([
               'trand_product' => 0,
            ]);
            return back()->with('message', 'Just Landed Product Remove Successfully');
        }

    }

    public function exclusive($id)
    {
        $exclusive = Product::find($id);

        if ($exclusive->exclusive_product == 0) {
            Product::where('id', $exclusive->id)->update([
                'exclusive_product' => 1,
            ]);
            return back()->with('message', 'Exclusive Product Add Successfully');
        }else{
            Product::where('id',$exclusive->id)->update([
               'exclusive_product' => 0,
            ]);
            return back()->with('message', 'Exclusive Product Remove Successfully');
        }

    }

    public function edit($id)
    {
        $edit = Product::find($id);
        $categories = Category::all();
        $brands = Brand::all();
        $sizes = Size::all();
        $colors = Color::all();

        return view('AdminPanel.Product.edit_product', compact('edit','categories','brands','sizes','colors'));
    }

    public function update(Request $request)
    {

        $this->validate($request, [
            'product_name' => 'required',
            'price' => 'required',
            'discription' => 'required',
            'image' => 'required',
        ]);

        $total_quantity = ColorSizeQty::where('product_id', $request->id)->sum('size_color_qty');
        $slug_name =  Str::slug(Str::lower($request->product_name));
        $sku = "PRO"."-"."BD"."-".rand(11111,99999);
        $total_price = $total_quantity * intval($request->discount_price);

        if ($request->hasFile('image')){



            $product_image = $request->file('image');
            $ext = $product_image->getClientOriginalExtension();
            $imageName = time().'-'.'.'.$ext;
            $directory = 'assets/images/product/';
            $imageUrl = $directory.$imageName;
            $product_image -> move($directory,$imageName);




            if ($product_image) {
                Product::where('id',$request->id)->update([
                    'user_id' => auth()->user()->id,
                    'product_name' => $request->product_name,
                    'brand_id' => $request->brand_id,
                    'category_id' => $request->category_id,
                    'subcategory_id' => $request->subcategory_id,
                    'discount_rate' => $request->discount_rate,
                    'price' => intval($request->price),
                    'discount_price' => $request->discount_price,
                    'discription' => $request->discription,
                    'image' => $imageUrl,
                    'slug' => $slug_name,
                    'sku' => $sku,
                    'status' => $request->status,
                    'created_at' => Carbon::now(),
                ]);
            }

        }

        $temp_datas = TempData::where('user_id', auth()->user()->id)->get();

        foreach($temp_datas as $temp_item){
            $temp_item->delete();
        }


        return redirect()->route('admin.product')->with('message', 'Product Uplopad Successfully');


    }

    public function destroy($id)
    {
        $product_id = Product::find($id);

        $product_id->delete();

        return response()->json(['success'=>'Deleted Successfully!!']);

    }
}
