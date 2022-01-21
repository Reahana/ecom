<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;

class SubCategoryController extends Controller
{
    private $categories;
    private $subCategory;
    private $subCategories;

    public function index()
    {
        $this->categories = Category::all();
        return view('admin.sub-category.add', ['categories' => $this->categories]);
    }

    public function create(Request $request)
    {
        SubCategory::newSubCategory($request);
        return redirect()->back()->with('message', 'Sub category info create successfully');
    }

    public function manage()
    {
        $this->subCategories = SubCategory::orderBy('id', 'desc')->get();
        return view('admin.sub-category.manage', ['subCategories' => $this->subCategories]);
    }

    public function edit($id)
    {
        $this->subCategory = SubCategory::find($id);
        $this->categories  = Category::all();
        return view('admin.sub-category.edit', [
            'subCategory' => $this->subCategory,
            'categories'  => $this->categories,
        ]);
    }

    public function update(Request $request, $id)
    {
        SubCategory::updateSubCategory($request, $id);
        return redirect('/manage-sub-category')->with('message', 'Sub category info update successfully');
    }

    public function delete(Request $request, $id)
    {
        SubCategory::deleteSubCategory($id);
        return redirect('/manage-sub-category')->with('message', 'Sub category info delete successfully');
    }
}
