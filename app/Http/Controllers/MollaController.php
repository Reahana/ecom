<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use App\Models\SubImage;
use Illuminate\Http\Request;

class MollaController extends Controller
{
    private $categories;
    private $products;

    public function index()
    {
        $this->categories = Category::all();
        $this->products = Product::orderBy('id', 'desc')->take(10)->get();

        return view('front.home.home', [
            'categories' => $this->categories,
            'products'   => $this->products,
        ]);
    }

    public function about()
    {
        return view('front.about.about');
    }

    public function contact()
    {
        return view('front.contact.contact');
    }

    public function categoryProduct($id)
    {
      $this->products = Product::where('category_id',$id)->orderBy('id' ,'desc')->get();
        return view('front.category.category',[
            'categories' => Category::all(),
          'products' =>  $this->products,
            'category' => Category::find($id)
        ] );
    }

    public function productDetail($id)
    {
        return view('front.product.detail',[
            'categories' => Category::all(),
            'product' => Product::find($id),
            'sub_images'=>SubImage::where('product_id',$id)->get()
            ]);
    }
}
