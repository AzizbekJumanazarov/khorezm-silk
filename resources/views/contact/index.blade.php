@extends('layouts.app', ['title' => __('Contact')])

@push('styles')
    <link rel="stylesheet" href="{{ asset('css/contact.css') }}">
@endpush
@section('menu-id'){{"gallery-header"}}@endsection
@section('content')
<main id="contact-main">
      <div class="contact-title">@lang('Our contacts')</div>
      <div class="row first_row">
        <div class="col-lg-6">
          <div class="contact-card">
            <div class="__icon">
              <span class="icon-location"></span>
            </div>
            <div class="__text">

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
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="contact-card contact-card2">
            <div class="__icon">
              <span class="icon-call"></span>
            </div>
            <div class="__text __text2">
              <div>
                @lang('Sales feedback'): <br />
                @lang('Marketing department'): 
              </div>
              <div class="__phone">
                {{setting('site.contact_first_phone')}} <br />
                {{setting('site.contact_second_phone')}}
              </div>
            </div>
            
            <div class="__text hidden_phone_section d-none">
              <div>
                @lang('Sales feedback'): <br />
                {{setting('site.contact_first_phone')}}
              </div>
              <div class="__phone">
                @lang('Marketing department'): <br />
                {{setting('site.contact_second_phone')}}
              </div>
            </div>

          </div>
        </div>
      </div>
      @if ($message = Session::get('success'))
          <div class="alert alert-primary alert-block mycss">
              <button type="button" class="close" data-dismiss="alert">x</button>
              <strong><i class="fa fa-check"></i> {{ __($message) }}</strong>
          </div>
      @endif
      <div class="row second-row">
        <div class="contact-big-card">
          <div class="__icon"><span class="icon-messenger"></span></div>
          <div class="__text">@lang('You have questions')? @lang('Write them to us')!</div>
          @include('contact._form')
        </div>
      </div>
      <img src="img/dots.jpg" class="contact-dots"/>
</main>
@endsection











