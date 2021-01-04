<section id="info">
        <img src="{{ asset('img/info-page-bg.png') }}" alt="info-page-bg" />
        <div class="info-card">
          <div class="info-card-title">
          @switch(app()->getLocale())
            @case('uz')"Хоразм Ипаги" MChJ
            @break
            @case('en')"Хоразм Ипаги" LTD
            @break
            @case('ru')OOO "Хоразм Ипаги" 
            @break
          @endswitch
        </div>
          <div class="info-card-txt">
            @switch(app()->getLocale())
                @case('uz')
                  {{ setting('site.home_big_intro_uz') }}
                @break
                @case('en')
                  {{ setting('site.home_big_intro_eng') }}
                @break
                @case('ru')
                 {{ setting('site.home_big_intro_ru') }}
                @break
            @endswitch  
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