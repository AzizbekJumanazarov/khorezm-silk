<div class="mt-5">
    <div class="gallery-title">
        <div><span> @lang('News')</span></div>
    </div>
    <div class="mt-5 landing-posts">
        @include('blog._items')
    </div>
    <div class="text-center mt-5">
        <a href="{{ route('blog.list') }}" class="go-to">
            <button class="submit-btn">
                <span><div>@lang('All news')</div></span>
            </button>
        </a>
    </div>
</div>