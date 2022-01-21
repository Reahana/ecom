<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [
    'uses'      => 'App\Http\Controllers\MollaController@index',
    'as'        => '/'
]);

Route::get('/about-us', [
    'uses'      => 'App\Http\Controllers\MollaController@about',
    'as'        => 'about'
]);

Route::get('/contact-us', [
    'uses'      => 'App\Http\Controllers\MollaController@contact',
    'as'        => 'contact'
]);

Route::get('/category-product/{id}', [
    'uses'      => 'App\Http\Controllers\MollaController@categoryProduct',
    'as'        => 'category-product'
]);


Route::get('/product-detail/{id}', [
    'uses'      => 'App\Http\Controllers\MollaController@productDetail',
    'as'        => 'product-detail'
]);
Route::post('/add-to-cart/{id}', [
    'uses'      => 'App\Http\Controllers\CartController@add',
    'as'        => 'cart.add'
]);
Route::get('/show-cart', [
    'uses'      => 'App\Http\Controllers\CartController@show',
    'as'        => 'cart.show'
]);

Route::post('/update-cart/{id}', [
    'uses'      => 'App\Http\Controllers\CartController@update',
    'as'        => 'cart.update'
]);

Route::get('/delete-cart/{id}', [
    'uses'      => 'App\Http\Controllers\CartController@delete',
    'as'        => 'cart.delete'
]);

Route::get('/checkout', [
    'uses'      => 'App\Http\Controllers\CheckoutController@index',
    'as'        => 'checkout'
]);


Route::post('/new-order', [
    'uses'      => 'App\Http\Controllers\CheckoutController@newOrder',
    'as'        => 'order.new'
]);

Route::get('/complete-order', [
    'uses'      => 'App\Http\Controllers\CheckoutController@completeOrder',
    'as'        => 'order.complete'
]);

Route::get('/complete-logout', [
    'uses'      => 'App\Http\Controllers\CheckoutController@customerLogout',
    'as'        => 'customer.logout'
]);

Route::get('/dashboard', [
    'uses' => 'App\Http\Controllers\DashboardController@index',
    'as'   => 'dashboard',
    'middleware' => ['auth:sanctum', 'verified']
]);

//=========category route start

Route::get('/add-category', [
    'uses' => 'App\Http\Controllers\CategoryController@index',
    'as'   => 'category.add',
    'middleware' => ['auth:sanctum', 'verified']
]);


Route::get('/manage-category', [
    'uses' => 'App\Http\Controllers\CategoryController@manage',
    'as'   => 'category.manage',
    'middleware' => ['auth:sanctum', 'verified']
]);

Route::post('/new-category', [
    'uses' => 'App\Http\Controllers\CategoryController@create',
    'as'   => 'category.new',
    'middleware' => ['auth:sanctum', 'verified']
]);

Route::get('/edit-category/{id}', [
    'uses' => 'App\Http\Controllers\CategoryController@edit',
    'as'   => 'category.edit',
    'middleware' => ['auth:sanctum', 'verified']
]);

Route::post('/update-category/{id}', [
    'uses' => 'App\Http\Controllers\CategoryController@update',
    'as'   => 'category.update',
    'middleware' => ['auth:sanctum', 'verified']
]);


Route::post('/delete-category/{id}', [
    'uses' => 'App\Http\Controllers\CategoryController@delete',
    'as'   => 'category.delete',
    'middleware' => ['auth:sanctum', 'verified']
]);

//=========category route end



//=========sub category route start

Route::get('/add-sub-category', [
    'uses' => 'App\Http\Controllers\SubCategoryController@index',
    'as'   => 'subcategory.add',
    'middleware' => ['auth:sanctum', 'verified']
]);


Route::get('/manage-sub-category', [
    'uses' => 'App\Http\Controllers\SubCategoryController@manage',
    'as'   => 'subcategory.manage',
    'middleware' => ['auth:sanctum', 'verified']
]);

Route::post('/new-sub-category', [
    'uses' => 'App\Http\Controllers\SubCategoryController@create',
    'as'   => 'subcategory.new',
    'middleware' => ['auth:sanctum', 'verified']
]);

Route::get('/edit-sub-category/{id}', [
    'uses' => 'App\Http\Controllers\SubCategoryController@edit',
    'as'   => 'subcategory.edit',
    'middleware' => ['auth:sanctum', 'verified']
]);

Route::post('/update-sub-category/{id}', [
    'uses' => 'App\Http\Controllers\SubCategoryController@update',
    'as'   => 'subcategory.update',
    'middleware' => ['auth:sanctum', 'verified']
]);


Route::post('/delete-sub-category/{id}', [
    'uses' => 'App\Http\Controllers\SubCategoryController@delete',
    'as'   => 'subcategory.delete',
    'middleware' => ['auth:sanctum', 'verified']
]);

//=========sub category route end



//=========brand route start

Route::get('/add-brand', [
    'uses' => 'App\Http\Controllers\BrandController@index',
    'as'   => 'brand.add',
    'middleware' => ['auth:sanctum', 'verified']
]);


Route::get('/manage-brand', [
    'uses' => 'App\Http\Controllers\BrandController@manage',
    'as'   => 'brand.manage',
    'middleware' => ['auth:sanctum', 'verified']
]);

Route::post('/new-brand', [
    'uses' => 'App\Http\Controllers\BrandController@create',
    'as'   => 'brand.new',
    'middleware' => ['auth:sanctum', 'verified']
]);

Route::get('/edit-brand/{id}', [
    'uses' => 'App\Http\Controllers\BrandController@edit',
    'as'   => 'brand.edit',
    'middleware' => ['auth:sanctum', 'verified']
]);

Route::post('/update-brand/{id}', [
    'uses' => 'App\Http\Controllers\BrandController@update',
    'as'   => 'brand.update',
    'middleware' => ['auth:sanctum', 'verified']
]);

Route::post('/delete-brand/{id}', [
    'uses' => 'App\Http\Controllers\BrandController@delete',
    'as'   => 'brand.delete',
    'middleware' => ['auth:sanctum', 'verified']
]);

//=========brand route end


//=========unit route start

Route::get('/add-unit', [
    'uses' => 'App\Http\Controllers\UnitController@index',
    'as'   => 'unit.add',
    'middleware' => ['auth:sanctum', 'verified']
]);


Route::get('/manage-unit', [
    'uses' => 'App\Http\Controllers\UnitController@manage',
    'as'   => 'unit.manage',
    'middleware' => ['auth:sanctum', 'verified']
]);

Route::post('/new-unit', [
    'uses' => 'App\Http\Controllers\UnitController@create',
    'as'   => 'unit.new',
    'middleware' => ['auth:sanctum', 'verified']
]);

Route::get('/edit-unit/{id}', [
    'uses' => 'App\Http\Controllers\UnitController@edit',
    'as'   => 'unit.edit',
    'middleware' => ['auth:sanctum', 'verified']
]);

Route::post('/update-unit/{id}', [
    'uses' => 'App\Http\Controllers\UnitController@update',
    'as'   => 'unit.update',
    'middleware' => ['auth:sanctum', 'verified']
]);

Route::post('/delete-unit/{id}', [
    'uses' => 'App\Http\Controllers\UnitController@delete',
    'as'   => 'unit.delete',
    'middleware' => ['auth:sanctum', 'verified']
]);

//=========unit route end


//=========product route start

Route::get('/add-product', [
    'uses' => 'App\Http\Controllers\ProductController@index',
    'as'   => 'product.add',
    'middleware' => ['auth:sanctum', 'verified']
]);

Route::get('/get-sub-category-by-id', [
    'uses' => 'App\Http\Controllers\ProductController@getSubCategory',
    'as'   => 'product.get-sub-category',
    'middleware' => ['auth:sanctum', 'verified']
]);


Route::get('/manage-product', [
    'uses' => 'App\Http\Controllers\ProductController@manage',
    'as'   => 'product.manage',
    'middleware' => ['auth:sanctum', 'verified']
]);

Route::post('/new-product', [
    'uses' => 'App\Http\Controllers\ProductController@create',
    'as'   => 'product.new',
    'middleware' => ['auth:sanctum', 'verified']
]);

Route::get('/edit-product/{id}', [
    'uses' => 'App\Http\Controllers\ProductController@edit',
    'as'   => 'product.edit',
    'middleware' => ['auth:sanctum', 'verified']
]);

Route::post('/update-product/{id}', [
    'uses' => 'App\Http\Controllers\ProductController@update',
    'as'   => 'product.update',
    'middleware' => ['auth:sanctum', 'verified']
]);

Route::post('/delete-product/{id}', [
    'uses' => 'App\Http\Controllers\UnitController@delete',
    'as'   => 'product.delete',
    'middleware' => ['auth:sanctum', 'verified']
]);

//=========product route end