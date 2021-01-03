<section id="info">
        <img src="{{ asset('img/info-page-bg.png') }}" alt="info-page-bg" />
        <div class="info-card">
          <div class="info-card-title">
          @if(app()->getLocale() == 'ru')
               OOO "Хоразм Ипаги"          
          @else
              "Хоразм Ипаги" LTD
          @endif
        </div>
          <div class="info-card-txt">
            @if(app()->getLocale() == 'ru')
              {{ setting('site.home_big_intro_ru') }}
            @else
              {{ setting('site.home_big_intro_eng') }}
            @endif
          </div>
          <div class="info-card-btn">
            <button>
              @lang('Read <br /> More')
            </button>
          </div>
        </div>
        <!-- info circle  -->
        <div class="info_circle">
          <div>
          </div>
        </div>
</section>