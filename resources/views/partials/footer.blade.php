<div class="footer">
    @include('partials.menus.footer')

    <div class="footer-info">
        <div class="address-section">
            <div class="footer-email">@lang('E-mail'): {{ setting('site.header_phone') }}</div>
            <div class="footer-address">
                @lang('Address'):
                @if(app()->getLocale() == 'ru')
                    {{ setting('site.address_ru') }}
                @else
                    {{ setting('site.address_en') }}
                @endif
            </div>
        </div>
        <div class="footer-phone">
            <div class="phone-section">@lang('Phone'): {{ setting('site.contact_first_phone') }}</div>
            <div class="phone-section">@lang('Phone'): {{ setting('site.contact_second_phone') }}</div>
        </div>
        <div class="footer-social">
            <a target="_blank" href="{{ setting('site.instagram_url') }}"> <img src="{{ asset('img/Vectorinsta.svg') }}" alt="instagram" /></a>
            <a target="_blank" href="{{ setting('site.facebook_url') }}"> <img src="{{ asset('img/Vectorface.svg') }}" alt="facebook" /></a>
            <a target="_blank" href="{{ setting('site.telegram_url') }}"> <img src="{{ asset('img/tg.svg') }}" alt="telegram" /></a>
        </div>
    </div>

    <div class="stick"></div>

    <div class="brand">
        © @lang('«PERFECT LOGISTICS» LTD'). <br />
        @lang('All rights reserved.')
    </div>
</div>