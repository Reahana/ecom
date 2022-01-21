<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{
    use HasFactory;
    private static $subCategory;
    private static $image;
    private static $imageName;
    private static $directory;
    private static $extension;
    private static $imageUrl;

    public static function getImageUrl($request)
    {
        self::$image = $request->file('image');
        if(self::$image)
        {
            self::$extension = self::$image->getClientOriginalExtension();
            self::$imageName = time().'.'.self::$extension; // 1234534.jpg
            self::$directory = 'sub-category-images/';
            self::$image->move(self::$directory, self::$imageName);
            return self::$directory.self::$imageName; // category-images/1234534.jpg
        }
        else
        {
            return '';
        }
    }

    public static function newSubCategory($request)
    {
        self::$subCategory = new SubCategory();
        self::$subCategory->category_id    = $request->category_id;
        self::$subCategory->name           = $request->name;
        self::$subCategory->description    = $request->description;
        self::$subCategory->image          = self::getImageUrl($request);
        self::$subCategory->status         = $request->status;
        self::$subCategory->save();
    }

    public static function updateSubCategory($request, $id)
    {
        self::$subCategory = SubCategory::find($id);

        self::$image = $request->file('image');
        if(self::$image)
        {
            if(file_exists(self::$subCategory->image))
            {
                unlink(self::$subCategory->image);
            }
            self::$imageUrl = self::getImageUrl($request);
        }
        else
        {
            self::$imageUrl = self::$subCategory->image;
        }

        self::$subCategory->category_id    = $request->category_id;
        self::$subCategory->name           = $request->name;
        self::$subCategory->description    = $request->description;
        self::$subCategory->image          = self::$imageUrl;
        self::$subCategory->status         = $request->status;
        self::$subCategory->save();
    }

    public static function deleteSubCategory($id)
    {
        self::$subCategory = SubCategory::find($id);
        if(file_exists(self::$subCategory->image))
        {
            unlink(self::$subCategory->image);
        }
        self::$subCategory->delete();
    }

    public function category ()
    {
        return $this->belongsTo('App\Models\Category');
    }

    public function products ()
    {
        return $this->hasMany('App\Models\Product');
    }
}
