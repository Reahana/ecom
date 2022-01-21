@extends('front.master')

@section('title')
    Checkout
    @endsection

@section('body')
    <main class="main">
        <div class="page-header text-center" style="background-image: url('{{asset('/')}}assets/images/page-header-bg.jpg')">
            <div class="container">
                <h1 class="page-title">Checkout<span>Shop</span></h1>

            </div><!-- End .container -->
        </div><!-- End .page-header -->
        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Shop</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Checkout</li>
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="page-content">
            <div class="checkout">
                <div class="container">
                    <form action="{{route('order.new')}}" method="post">
                        @csrf
                        <div class="row">
                            <div class="col-lg-9">
                                <h2 class="checkout-title text-center">Please Fill up the form carefully</h2>
                                <hr>


                                <label>Full Name <span class="text-danger">*</span></label>
                                <input type="text"  name="name" class="form-control" required>


                                <label>Email Address</label>
                                <input type="email" name="email" class="form-control" >

                                <label>Mobile Number<span class="text-danger">*</span></label>
                                <input type="text" name="mobile" class="form-control" required>

                                <label>Delivery Address <span class="text-danger">*</span></label>
                                <textarea required class="form-control" name="delivery_address" cols="30" rows="4" placeholder="Please give your order delivery address"></textarea>
                            </div><!-- End .col-lg-9 -->


                            <aside class="col-lg-3">
                                <div class="summary">
                                    <h3 class="summary-title">Your Order</h3><!-- End .summary-title -->

                                    <table class="table table-summary">
                                        <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th>Total</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        @php($sum=0)
                                        @foreach($cart_products as $cart_product)
                                        <tr>
                                            <td><a href="#">{{$cart_product->name}}</a></td>
                                            <td>Tk.{{$cart_product->price*$cart_product->qty}} </td>
                                            @php($sum=$sum + ($cart_product->price*$cart_product->qty) )
                                        </tr>
                                        @endforeach
                                        <tr class="summary-subtotal">
                                            <td>Subtotal:</td>
                                            <td>{{number_format($sum)}}</td>
                                        </tr><!-- End .summary-subtotal -->
                                        <tr>
                                            <td>Shipping:</td>
                                            <td>Free shipping</td>
                                        </tr>
                                        <tr>
                                            <td>Tax:</td>
                                            <td>{{$tax = (($sum * 15)/100)}}</td>
                                        </tr>
                                        <tr class="summary-total">
                                            <td>Total:</td>
                                            <td>{{$sum + $tax}}</td>
                                            <?php Session::put('tax',$tax);?>
                                            <?php Session::put('total',$sum + $tax);?>
                                        </tr>
                                        </tbody>
                                    </table>


                                    <button type="submit" class="btn btn-outline-primary-2 btn-order btn-block">
                                        <span class="btn-text">Place Order</span>
                                        <span class="btn-hover-text">Proceed to Checkout</span>
                                    </button>
                                </div><!-- End .summary -->
                            </aside><!-- End .col-lg-3 -->
                        </div><!-- End .row -->
                    </form>
                </div><!-- End .container -->
            </div><!-- End .checkout -->
        </div><!-- End .page-content -->
    </main><!-- End .main -->


@endsection