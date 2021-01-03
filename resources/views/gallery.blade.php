@extends('layouts.app')
	
@section('menu-id'){{"gallery-header"}}@endsection

@section('content')
<main id="gallery-main" >
	<section class="gallery-text">
    	<div class="row">
          <div class="col-md-6">
            <div class="left-content">
              <div class="left-content__title">@lang('Our gallery')</div>
              <p class="left-content__text">
                @if(app()->getLocale() == 'ru')
              	{{ setting('site.gallery_intro_ru') }}
            	@else
              	{{ setting('site.gallery_intro_eng') }}
            	@endif 
              </p>
            </div>
          </div>
        </div>
  	</section>
	@include('gallery._item')
	<img src="/img/long-dots-bg.jpg" class="long-dots" />
    <img src="/img/dots.jpg" class="normal-dots" />
    <img src="/img/small-dots-bg.jpg" class="small-dots" />
</main> 
@endsection

      
      
      

 
