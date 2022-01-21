@extends('front.master')

@section('title')
    Checkout
@endsection

@section('body')
    <main class="main">
        <div class="page-header text-center" style="background-image: url('{{asset('/')}}assets/images/page-header-bg.jpg')">
            <div class="container">
                <h1 class="page-title">Complete<span>Order</span></h1>

            </div><!-- End .container -->
        </div><!-- End .page-header -->
        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Customer</a></li>
                    <li class="breadcrumb-item"><a href="#">Order</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Complete-Order</li>
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="page-content">
            <div class="checkout">
                <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <h2 class="checkout-title text-center">
                                    Welcome {{Session::get('name')}},
                                   {{Session::get('message')}}
                                </h2>
                            </div><!-- End .col-lg-9 -->
                        </div><!-- End .row -->
                </div><!-- End .container -->
            </div><!-- End .checkout -->
        </div><!-- End .page-content -->
    </main><!-- End .main -->


@endsection