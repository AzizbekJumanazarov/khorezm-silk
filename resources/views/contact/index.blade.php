@extends('layouts.app')

@push('styles')
    <link rel="stylesheet" href="{{ asset('css/contact.css') }}">
@endpush

@section('content')
    <main>
        <section>
            <div class="info-row">
                <div class="info-card">
                    @if ($message = Session::get('success'))
                        <div class="alert alert-primary alert-block">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            <strong><i class="fa fa-check"></i> {{ __($message) }}</strong>
                        </div>
                    @endif
                    <div class="name">
                        @if(app()->getLocale() == 'ru')
                            {{ setting('site.contact_name_fist_ru') }}
                        @else
                            {{ setting('site.contact_name_fist') }}
                        @endif
                    </div>
                    <div class="phone">@lang('Phone'): {{ setting('site.contact_first_phone') }}</div>
                    <div class="mail">@lang('E-mail'): {{ setting('site.header_phone') }}</div>
                    <div class="info-links">
                        <a href="https://t.me/{{ setting('site.contact_first_tg') }}">
                            <img src="{{ asset('img/groupSvg.svg') }}" alt="telegram">
                        </a>
                        <a href="#">
                            <img src="{{ asset('img/group2Svg.svg') }}" alt="viber">
                        </a>
                    </div>
                </div>

                <div class="info-card">
                    <div class="name name-one-line">
                        @if(app()->getLocale() == 'ru')
                            {{ setting('site.contact_name_second_ru') }}
                        @else
                            {{ setting('site.contact_name_second') }}
                        @endif
                    </div>
                    <div class="phone">@lang('Phone'): {{ setting('site.contact_second_phone') }}</div>
                    <div class="mail">@lang('E-mail'): {{ setting('site.header_phone') }}</div>
                    <div class="info-links">
                        <a href="https://t.me/{{ setting('site.contact_second_tg') }}">
                            <img src="{{ asset('img/groupSvg.svg') }}" alt="telegram">
                        </a>
                        <a href="#">
                            <img src="{{ asset('img/group2Svg.svg') }}" alt="viber">
                        </a>
                    </div>
                </div>
            </div>

            <div class="google-map">
                <div class="map-title">
                    @if(app()->getLocale() == 'ru')
                        {{ setting('site.address_ru') }}
                    @else
                        {{ setting('site.address_en') }}
                    @endif
                </div>
                <div class="map-mail-index">
                    @if(app()->getLocale() == 'ru')
                        {{ setting('site.mail_index_ru') }}
                    @else
                        {{ setting('site.mail_index') }}
                    @endif
                </div>

                <div class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5982.880295134361!2d60.817134720096035!3d41.35349118769286!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x41dfe955ea87ab0d%3A0xdbe8654e224422cb!2z0JHQsNCz0LDRgtGB0LrQuNC5INGA0LDQudC-0L0sINCj0LfQsdC10LrQuNGB0YLQsNC9!5e0!3m2!1sru!2s!4v1603211114731!5m2!1sru!2s" frameborder="0" style="border: 0" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
            </div>

            <div class="form-title">@lang('Send message to our manager')</div>

            @include('contact._form')
        </section>
    </main>
@endsection
