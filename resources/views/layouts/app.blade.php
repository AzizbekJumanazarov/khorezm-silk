<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Perfect Logics</title>
    <link
            rel="stylesheet"
            href="https://pro.fontawesome.com/releases/v5.8.2/css/all.css"
            integrity="sha384-xVVam1KS4+Qt2OrFa+VdRUoXygyKIuNWUUUBZYv+n27STsJ7oDOHJgfF0bNKLMJF"
            crossorigin="anonymous"
    />
    <link
            href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="{{ asset('vendor/bootstrap/css/bootstrap.css') }}" />
    <link rel="stylesheet" href="{{ asset('css/index.css') }}" />
    <link rel="stylesheet" href="{{ asset('css/about.css') }}" />
    <link rel="stylesheet" href="{{ asset('css/news.css') }}" />
    @stack('styles')
    <script src="{{ asset('vendor/bootstrap/js/popper.js') }}"></script>
</head>

<body>
@include('partials._callback')
<header>
    <nav>
        <a href="{{ route('landing-page') }}">
            <img
                class="logo"
                src="{{ asset('img/logo.png') }}"
            />
        </a>

        <div class="navbar-open-btn"><i class="fal fa-bars"></i></div>
        <div class="right-nav">
            <ul class="top-nav">
                <li class="nav-email">
                    <a href="#" class="nav-email-link">{{ setting('site.header_phone') }}</a>
                </li>

                <li class="nav-phone"><i class="fa fa-phone-office"></i> @lang('Request callback')</li>

                <li class="nav-flag">
                    @if(app()->getLocale() == 'en')
                        <a href="{{ route('lang.switch', 'ru') }}">
                            <div class="nav-flag-txt">РУС</div>
                            <img src="{{ asset('img/RU flag 1.png') }}" alt="" />
                        </a>
                    @else
                        <a href="{{ route('lang.switch', 'en') }}">
                            <div class="nav-flag-txt">ENG</div>
                            <img src="{{ asset('img/eng.png') }}" alt="" />
                        </a>
                    @endif
                </li>

                <div class="navbar-close-btn"><i class="fal fa-times"></i></div>
            </ul>
            @include('partials.menus.main')
        </div>
    </nav>
    @yield('slider')
</header>
@yield('content')
<footer>
    @include('partials.footer')
</footer>
<!-- Preloader -->
<div id="preloader">

</div>
<!-- / Preloader -->
<script src="{{ asset('vendor/jquery/JQuery.js') }}"></script>
<script src="{{ asset('vendor/bootstrap/js/bootstrap.js') }}"></script>
<script src="{{ asset('js/index.js') }}"></script>
<script src="{{ asset('js/main.js') }}"></script>
</body>
</html>
