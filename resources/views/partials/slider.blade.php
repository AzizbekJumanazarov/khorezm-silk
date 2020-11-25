<div
        id="carouselExampleFade"
        class="carousel slide carousel-fade"
        data-ride="carousel"
>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <div class="car">
                <div class="description">
                    <div>
                        @lang('We use high <div></div> productive and transferable modern technologies')
                    </div>
                    <button class="car-btn">
                        <a href="javascript: void(0);" id="play-btn" type="button" data-url="https://www.youtube.com/embed/AszpAyEhxeI?autoplay=1">
                            <div>@lang('Factory tour')</div>
                        </a>
                    </button>
                </div>
                <div id="video-play-btn-content">
                    <img
                        class="car-img2"
                        src="{{ asset('img/video-back.jpg') }}"
                        alt="carousel-img"
                    />
                    <button class="play-video play-btn" onclick="$('#play-btn').trigger('click');"></button>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <div class="car">
                <div class="description">
                    <div>
                        @lang('Meeting the demand for fresh and dried fruits and vegetables')
                    </div>
                    <button class="car-btn">
                        <a href="{{ route('shop.index') }}"><div>@lang('Our products')</div></a>
                    </button>
                </div>
                <img
                        class="car-img1"
                        src="{{ asset('img/IMG_7817 1.png') }}"
                        alt="carousel-img"
                />
            </div>
        </div>
        <div class="carousel-item">
            <div class="car">
                <div class="description">
                    <div>
                        @lang('A large selection of dried selected products and a selection of convenient delivery')
                    </div>
                    <button class="car-btn">
                        <a href="{{ route('shop.index') }}"><div>@lang('View all products')</div></a>
                    </button>
                </div>
                <img
                        class="car-img3"
                        src="{{ asset('img/IMG_7925 1.png') }}"
                        alt="carousel-img"
                />
            </div>
        </div>
    </div>
    <a
            class="carousel-control-prev"
            href="#carouselExampleFade"
            role="button"
            data-slide="prev"
    >
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a
            class="carousel-control-next"
            href="#carouselExampleFade"
            role="button"
            data-slide="next"
    >
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

@include('partials._video-modal')