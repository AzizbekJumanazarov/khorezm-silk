@extends('layouts.app')

@push('styles')
    <link rel="stylesheet" href="css/products.css?v=0.1" />
@endpush

@section('content')
<main>
    <!-- tab panel buttons -->

    <ul class="nav nav-tabs custom-nav" id="myTab" role="tablist">
        @foreach($categories as $index => $category)
        <li class="nav-item custom-nav-item" role="presentation">
            <a
                    class="nav-link {{ (!$index) ? 'active' : '' }}"
                    id="{{ $category->slug }}-tab"
                    data-toggle="tab"
                    href="#{{ $category->slug }}"
                    role="tab"
                    aria-controls="{{$category->slug}}"
                    aria-selected="{{ (!$index) ? 'true' : 'false' }}"
            >
                <span>{{ $category->t('name') }}</span>
            </a>
        </li>
        @endforeach
    </ul>

    <!-- tab contents  -->

    <div class="tab-content" id="myTabContent">
        @foreach($categories as $index => $category)
        <div
                class="tab-pane fade {{ $index == 0 ? 'active show'  : '' }}"
                id="{{ $category->slug }}"
                role="tabpanel"
                aria-labelledby="{{ $category->slug }}-tab"
        >
            <div class="row">
                @foreach($category->products as $product)
                <div class="col-lg-6">
                    <div class="products-card">
                        <div class="products-card-img">
                            <img
                                    src="{{ Voyager::image($product->image) }}"
                                    alt="{{ $product->name }}"
                            />
                            <div class="product-name">
                                <div><span>{{ $product->t('name') }}</span></div>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>

        </div>
        @endforeach
    </div>
</main>
@endsection