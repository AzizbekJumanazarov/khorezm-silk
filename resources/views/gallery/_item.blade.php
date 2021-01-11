@foreach($images as $index => $image)
  <div class="col-md-6">
    <a href="{{ Voyager::image($image->image) }}" class="showcase" data-rel="lightcase:myCollection:slideshow">
    <div class="gallery-img-card" data-id="{{ $image->id }}">
      <div class="gallery-img-card-layout">
        <img src="{{Voyager::image($image->thumbnail('cropped'))}}" alt="" />
        <div class="gallery-img-card-focus">
          <div class="medium-circle">
            <div class="small-circle">
              <span class="icon-zoom-in"></span>
            </div>
          </div>
        </div>
      </div>
    </div>
    </a>
  </div>
@endforeach
        