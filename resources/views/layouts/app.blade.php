<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Khorezm silk</title>

    <link rel="apple-touch-icon" sizes="57x57" href="/img/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/img/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/img/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/img/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/img/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/img/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/img/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/img/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/img/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="/img/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="/img/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/img/favicon/favicon-16x16.png">
    <link rel="manifest" href="/img/favicon/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/img/favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#33408f">

    <link rel="stylesheet" href="{{ asset('css/fonts.css') }}"/>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="{{ asset('vendor/icons/icomoon/style.css') }}" />
    <link rel="stylesheet" href="{{ asset('css/index.css') }}" />
    <link rel="stylesheet" href="{{ asset('css/extra-styling.css') }}" />
  </head>
  <body>
    <div class="navbar-layout"></div>
    <header id="@yield('menu-id')">
      @if(Route::current()->getName() == 'landing-page')
        <div class="index-header">
      @endif  
        <nav id="mobile_menu">
          <div class="nav">
            <a href="{{ route('landing-page') }}">
              <img src="{{ asset('img/logo.png') }}" alt="logo" />
            </a>
            <div id="hidden-text">MENU</div>
            <div id="hidden-line"></div>
            @include('partials.menus.main')
          </div>
          <div class="navbar-info">
          <div class="navbar-info_phone">@lang('Marketing department')<br/>
            <span>{{ setting('site.contact_first_phone') }}</span>
          </div>
          <div class="navbar-info_language">
            <div class="dropdown">
              <button
                class="dropdown-toggle btn btn-default"
                type="button"
                id="dropdownMenuButton"
                data-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                @switch(app()->getLocale())
                  @case('uz')O'Z
                  @break
                  @case('en')ENG
                  @break
                  @case('ru')РУС
                  @break
                @endswitch
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                @switch(app()->getLocale())
                  @case('en')
                    <a class="dropdown-item" href="{{ route('lang.switch', 'ru') }}">РУССКИЙ</a>
                    <a class="dropdown-item" href="{{ route('lang.switch', 'uz') }}">O'ZBEKCHA</a>
                    @break 
                  @case('ru')
                    <a class="dropdown-item" href="{{ route('lang.switch', 'uz') }}">O'ZBEKCHA</a>
                    <a class="dropdown-item" href="{{ route('lang.switch', 'en') }}">ENGLISH</a>
                    @break
                  @case('uz')
                    <a class="dropdown-item" href="{{ route('lang.switch', 'ru') }}">РУССКИЙ</a>
                    <a class="dropdown-item" href="{{ route('lang.switch', 'en') }}">ENGLISH</a>
                    @break
                @endswitch
              </div>
            </div>
          </div>

          <div class="navbar-info_callback">
            <button type="button" data-toggle="modal" data-target="#callback-modal">@lang('Request callback')</button>
          </div>
        </div>
      </nav>

       <div id="hidden-navbar">
        <a href="{{ route('landing-page') }}">
          <img src="img/logo.png" alt="logo" />
        </a>
        <div class="mobile_navbar_toggle">
          <svg viewBox="0 0 800 600" class="">
            <path
              d="M300,220 C300,220 520,220 540,220 C740,220 640,540 520,420 C440,340 300,200 300,200"
              class="top_bar svg_path"
            />

            <path d="M300,320 L540,320" class="middle_bar svg_path" />

            <path
              d="M300,210 C300,210 520,210 540,210 C740,210 640,530 520,410 C440,330 300,190 300,190"
              class="bottom_bar svg_path"
              transform="translate(480, 320) scale(1, -1) translate(-480, -318)"
            />
          </svg>
        </div>
      </div>

    @stack('header') 
    
    @if(Route::current()->getName() == 'testing')
      </div>
    @endif

    </header>

    @yield('content')

    <footer>
      @include('partials.footer')
    </footer>


  <!-- scripts -->

    @include('partials._callback')

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
      integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
      integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
      crossorigin="anonymous"
    ></script>

  <script src="https://kit.fontawesome.com/da87c04439.js"crossorigin="anonymous"></script>
  <script src="{{ asset('js/index.js') }}"></script>
 
 </body>
</html>
