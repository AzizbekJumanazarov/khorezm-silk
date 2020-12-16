<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Khorezm silk</title>
    <link rel="stylesheet" href="{{ asset('css/fonts.css') }}"/>
    <link rel="stylesheet" href="{{ asset('vendor/Bootstrap/css/bootstrap.css') }}" />
    <link rel="stylesheet" href="{{ asset('vendor/icons/icomoon/style.css') }}" />
    <link rel="stylesheet" href="{{ asset('css/index.css') }}" />
  </head>
  <body>
    <header>
      <nav>
        <div class="nav">
          <a href="{{ route('landing-page') }}">
            <img src="{{ asset('img/Logo.png') }}" alt="logo" />
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

    @if (\Request::is('/'))  
      @include('partials.presentation')   
    @endif 
    
    <!-- here should be fixed -->
    <!-- yield('presentation') -->

    </header>

    @yield('content')

    <footer>
      @include('partials.footer')
    </footer>

  </body>

  <!-- scripts -->
  <script src="{{ asset('vendor/Jquery/JQuery.js') }}"></script>
  <script src=" {{ asset('vendor/Bootstrap/js/popper.js') }}"></script>
  <script src="{{ asset('vendor/Bootstrap/js/bootstrap.js') }}"></script>
  <script src="https://kit.fontawesome.com/da87c04439.js"crossorigin="anonymous"></script>
</html>
