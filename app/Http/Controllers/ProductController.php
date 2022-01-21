<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use App\Models\SubCategory;
use App\Models\SubImage;
use App\Models\Unit;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    private $products;
    private $product;
    private $categories;
    private $subCategories;
    private $brands;
    private $units;

    public function index()
    {
        $this->categories       = Category::all();
        $this->subCategories    = SubCategory::all();
        $this->brands           = Brand::all();
        $this->units            = Unit::all();

        return view('admin.product.add', [
            'categories'    => $this->categories,
            'subCategories' => $this->subCategories,
            'brands'        => $this->brands,
            'units'         => $this->units,
        ]);
    }

    public function getSubCategory()
    {
        $this->subCategories = SubCategory::where('category_id', $_GET['bitm'])->get();
        return json_encode($this->subCategories);
    }

    public function create(Request $request)
    {
        $this->product = Product::newProduct($request);
        SubImage::newSubImage($this->product, $request);
        return redirect()->back()->with('message', 'Product info create successfully');
    }

    public function manage()
    {
        $this->products = Product::orderBy('id', 'desc')->get();
        return view('admin.product.manage', ['products' => $this->products]);
    }

    public function edit($id)
    {
        $this->product = Product::find($id);
        return view('admin.product.edit', ['product' => $this->product]);
    }

    public function update(Request $request, $id)
    {
        Product::updateProduct($request, $id);
        return redirect('/manage-product')->with('message', 'Product info update successfully');
    }

    public function delete(Request $request, $id)
    {
        Product::deleteProduct($id);
        return redirect('/manage-product')->with('message', 'Product info delete successfully');
    }
}
