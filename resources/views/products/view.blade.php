@extends('layouts.app', ['title' => $product->t('name')])
@section('menu-id'){{"gallery-header"}}@endsection
@section('content')

    <main id="news-detailed-main">
        <section class="news-detalied-content">
            <div class="row">
                <div class="col-lg-6">
                    <div class="left-content">
                        <div class="left-content__title">
                            {{ $product->t('name') }}
                        </div>
                        <span class="grey__span icn-calendar">{{$product->t('updated_at')->format('d.m.Y')}}</span>
                        <p class="left-content__text">
                            {!! $product->t('details')  !!}
                        </p>
                        <table class="table table-striped table-bordered table-hover">
                            <tbody>
                                <tr>
                                    <td class="font-bold">@lang('Detail'):</td>
                                    <td>{{ $product->t('detail') }}</td>
                                </tr>
                                <tr>
                                    <td class="font-bold">@lang('Color'):</td>
                                    <td>{{ $product->t('color') }}</td>
                                </tr>
                                <tr>
                                    <td class="font-bold">@lang('Design'):</td>
                                    <td>{{ $product->t('design') }}</td>
                                </tr>
                                <tr>
                                    <td class="font-bold">@lang('Composition'):</td>
                                    <td>{{ $product->t('composition') }}</td>
                                </tr>
                                <tr>
                                    <td class="font-bold">@lang('Equipment'):</td>
                                    <td>{{ $product->t('equipment') }}</td>
                                </tr>
                                <tr>
                                    <td class="font-bold">@lang('Vendor code'):</td>
                                    <td>{{ $product->t('vendor_code') }}</td>
                                </tr>
                                <tr>
                                    <td class="font-bold">@lang('Manufacturer country'):</td>
                                    <td>{{ $product->t('country') }}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="right-content">
                        <a href="{{ Voyager::image($product->image) }}" class="showcase" data-rel="lightcase:myCollection:slideshow">
                            <img src="{{ Voyager::image($product->image) }}" alt="{{ $product->t('title') }}" />
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <section id="news-detailed-other-news">
            <div class="other-news-title">@lang('Products')</div>
            <div class="row">
                @foreach($random_items as $index => $item)
                    <div class="col-lg-4 px-0">
                        <div class="blogs-card">
                            <div class="b-card-header">
                                <img src="{{ Voyager::image($item->image) }}" alt="avatar" />
                                <div class="b-card-name">
                                    <div class="b-card-name_name">Khorezm silk</div>
                                    <div class="b-card-name_status">{{$item->t('updated_at')->format('d.m.Y')}}</div>
                                </div>
                            </div>
                            <hr />
                            <div class="b-card-body">
                                <div class="b-card-body-title">
                                    {{$item->t('name')}}
                                </div>
                                <div class="b-card-body-txt">
                                    {{substr($item->t('description'), 0, 180)}}. . .
                                </div>
                                <a href="{{ route('shop.view', $item->slug) }}" class="b-card-body-link"> @lang('Read more') </a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </section>
        <img src="/img/dots.jpg" class="news-detailed-dots" />
    </main>
    @include('components.lightcase')

@endsection