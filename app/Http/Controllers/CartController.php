<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Cart;
use Illuminate\Http\Request;

class CartController extends Controller
{
    private  $product;
    public function add(Request $request, $id)
    {
       $this->product = Product::find($id);
        Cart::add([
            'id'    => $this->product->id,
            'name'  => $this->product->name,
            'qty'   => $request->qty,
            'price' => $this->product->selling_price,
            'weight' => 0,
            'options' => [
                'image' => $this->product->image
            ]
        ]);
        return redirect('/show-cart')->with('message', 'Product info add into cart successfully');
    }
    public function show()
    {
        return view('front.cart.cart',[
            'cart_products' => Cart::content(),
        ]);
    }
    public function update (Request $request, $id)
    {
        Cart::update($id, $request->qty);
        return redirect()->back()->with('message', "Cart Product Updated Successfully");
    }
    public function delete ($id)
    {

        Cart::remove($id);
        return redirect()->back()->with('message', '<span class="text-danger">Cart Product Deleted Successfully</span>');
    }
}
