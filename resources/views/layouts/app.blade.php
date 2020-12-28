<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Khorezm silk</title>
    <link rel="stylesheet" href="{{ asset('css/fonts.css') }}"/>
    <link rel="stylesheet" href="{{ asset('vendor/bootstrap/css/bootstrap.css') }}" />
    <link rel="stylesheet" href="{{ asset('vendor/icons/icomoon/style.css') }}" />
    <link rel="stylesheet" href="{{ asset('css/index.css') }}" />
    <link rel="stylesheet" href="{{ asset('css/extra-styling.css') }}" />
  </head>
  <body>
    <header id="@yield('menu-id')">
      <nav>
        <div class="nav">
          <a href="{{ route('landing-page') }}">
            <img src="{{ asset('img/logo.png') }}" alt="logo" />
          </a>
          @include('partials.menus.main')
        </div>
        <div class="navbar-info">
          <div class="navbar-info_phone">@lang('Marketing department')
            <br />
            <span>{{ setting('site.contact_first_phone') }}</span>
          </div>


          <div class="navbar-info_language">
            <div class="dropdown">
              <div
                class="dropdown-toggle"
                type="button"
                id="dropdownMenuButton"
                data-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                @if(app()->getLocale() == 'en')ENG
                @else РУС
                @endif
                
              </div>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                @if(app()->getLocale() == 'en')
                <a class="dropdown-item" href="{{ route('lang.switch', 'ru') }}">РУС</a>
                @else
                <a class="dropdown-item" href="{{ route('lang.switch', 'en') }}">ENG</a>
                 @endif
              </div>
            </div>
          </div>

          <div class="navbar-info_callback">
            <button>@lang('Request callback')</button>
          </div>
        </div>
      </nav>

    @stack('header') 
    
    </header>

    @yield('content')

    <footer>
      @include('partials.footer')
    </footer>

  </body>

  <!-- scripts -->
  <script src="{{ asset('vendor/jquery/jquery.js') }}"></script>
  <script src=" {{ asset('vendor/bootstrap/js/popper.js') }}"></script>
  <script src="{{ asset('vendor/bootstrap/js/bootstrap.js') }}"></script>
  <script src="https://kit.fontawesome.com/da87c04439.js"crossorigin="anonymous"></script>
  <script src="{{ asset('js/index.js') }}"></script>
</html>
