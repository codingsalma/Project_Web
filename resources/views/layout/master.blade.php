<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>@yield('title') | Pembayaran SPP</title>

    @include('layout.include.styles')

</head>

<body class="hold-transition sidebar-mini">
    <!-- Site wrapper -->
    <div class="wrapper">
        @include('layout.include.navbar')
        @include('layout.include.sidebar')
        @yield('content')

        <!-- ./wrapper -->
    </div>
    @include('layout.include.scripts')
    @stack('addon-script')
</body>

</html>
