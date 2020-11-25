<section id="gallery">
    <div class="gallery-title">
        <div><span>@lang('Our gallery')</span></div>
    </div>

    <div class="gallery-row">
        @include('gallery._item')
    </div>

    <div class="modal-container">
        <div class="modal-card">
            <img class="modal-card-img" src="img/IMG_7826 1.png" alt="Gallery">

            {{--<button class="gallery-left-btn">--}}
                {{--<img src="{{ asset('img/Vector.svg') }}">--}}
            {{--</button>--}}
            {{--<button class="gallery-right-btn">--}}
                {{--<img src="{{ asset('img/Vector2.svg') }}">--}}
            {{--</button>--}}

            <div class="close-btn-gallery">
                <div class="close-btn-x"></div>
            </div>
        </div>
    </div>

    <div class="see-more-btn">
        <button data-route="{{ route('gallery.pager') }}">
            <div><span>@lang('Load more')</span></div>
        </button>
    </div>
</section>