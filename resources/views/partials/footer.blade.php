 <footer>
      <div class="footer">
        <div class="row">
          <div class="col-lg-4 col-md-6">
            <ul class="our-contacts">
              <div class="our-contacts-title">@lang('Our contacts')</div>
              <li> 
                <span>@lang('Address'):</span>  
                @switch(app()->getLocale())
                  @case('uz')
                   {{ setting('site.address_uz') }}
                  @break
                  @case('en')
                    {{ setting('site.address_en') }}
                  @break
                  @case('ru')
                    {{ setting('site.address_ru') }}
                  @break
                @endswitch
              </li>
              <li class="our-contacts-phone">
                <span>@lang('Phone'):</span> {{ setting('site.contact_second_phone') }}
              </li>
              <li class="our-contacts-email">
                <span>@lang('E-mail')</span> {{ setting('site.header_phone') }}
              </li>
            </ul>
          </div>
          <div class="col-lg-3 col-md-6">
            <ul class="our-contacts">
              <div class="our-contacts-title our-contacts-title-two">@lang('About')</div>
              <li class="our-contacts-about">
                @switch(app()->getLocale())
                  @case('uz')
                   {{ setting('site.about_footer_uz') }}
                  @break
                  @case('en')
                    {{ setting('site.about_footer_eng') }}
                  @break
                  @case('ru')
                    {{ setting('site.about_footer_ru') }}
                  @break
                @endswitch
              </li>
            </ul>
          </div>
          <div class="col-lg-4 col-md-12">
            <ul class="our-contacts">
              <img src="{{ asset('img/logo-white.png') }}" height="110px" alt="Logo" />
              <div class="our-contacts-title our-contacts-title-four">
                @lang('We are in social networks')
              </div>
              <div class="footer-icons">
                <a href="{{ setting('site.facebook_url') }}"><i class="fab fa-facebook-square"></i></a>
                <a href="{{ setting('site.telegram_url') }}"><i class="fab fa-twitter-square"></i></a>
                <a href="{{ setting('site.instagram_url') }}"><i class="fab fa-instagram"></i></a>
              </div>
            </ul>
          </div>
        </div>
      </div>
</footer>