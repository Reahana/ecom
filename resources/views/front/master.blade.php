<!DOCTYPE html>
<html lang="en">

<!-- molla/index-13.html  22 Nov 2019 09:59:06 GMT -->
<head>

    @include('front.includes.meta')
    <title>@yield('title')</title>
    @include('front.includes.style')

</head>

<body>
<div class="page-wrapper">

    @include('front.includes.header')

    @yield('body')


    @include('front.includes.footer')

    @include('front.includes.script')
</div>
</body>


<!-- molla/index-13.html  22 Nov 2019 09:59:31 GMT -->
</html>
