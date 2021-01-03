<section class="gallery-images">
        <div class="row">
         @foreach($images as $index => $image)	
          <div class="col-md-6">
            <div class="gallery-img-card">
              <div class="gallery-img-card-layout">
                <img src="{{Voyager::image($image->thumbnail('cropped'))}}" alt="gallery img" />
                <div
                  class="gallery-img-card-focus"
                  type="button"
                  data-toggle="modal"
                  data-target="#{{$image->id}}"
                >
                  <div class="medium-circle">
                    <div class="small-circle">
                      <span class="icon-zoom-in"></span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

        <!-- Modal -->
          <div
          class="modal fade"
          id="{{$image->id}}"
          tabindex="-1"
          role="dialog"
          aria-labelledby="exampleModalLabel"
          aria-hidden="true"
        >
          <div class="modal-dialog gallery-modal-dialog" role="document">
            <div class="modal-content gallery-modal-content">
              <img src="{{Voyager::image($image->image) }}" alt="" />
              <button type="button" data-dismiss="modal">
                <span class="icon-cancel"></span>
              </button>
            </div>
          </div>
        </div>
        <!-- modal end -->

         @endforeach
        </div>

        <!-- gallery refresh button -->
        <div class="gallery-refresh-btn">
          <a href="#" class="refresh-circle">
            <div class="refresh-link">@lang('Load more')</div>
          </a>
        </div>
        <!-- gallery refresh button end -->
</section>