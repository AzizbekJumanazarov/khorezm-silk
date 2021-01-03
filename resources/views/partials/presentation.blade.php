<div class="header-first-row">
        <div class="_content">
          <div class="__title">
            @if(app()->getLocale() == 'ru')
              {{ setting('site.home_intro_main_ru') }}
            @else
              {{ setting('site.home_intro_main_eng') }}
            @endif
          </div>
          <div class="__text">
            @if(app()->getLocale() == 'ru')
              {{ setting('site.home_intro_ru') }}
            @else
              {{ setting('site.home_intro_eng') }}
            @endif
          </div>
        </div>
        <img src="{{ asset('img/header1.jpg')}}" alt="header-img" />
</div>


      <div class="h-circle-line"></div>

      <div class="header-second-row">
        <a href="#" class="h-cirlce-btn">
          <div class="h-circle-arrow">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              x="0px"
              y="0px"
              width="55"
              height="55"
              viewBox="0 0 172 172"
              style="fill: #000000"
            >
              <g
                fill="none"
                fill-rule="nonzero"
                stroke="none"
                stroke-width="1"
                stroke-linecap="butt"
                stroke-linejoin="miter"
                stroke-miterlimit="10"
                stroke-dasharray=""
                stroke-dashoffset="0"
                font-family="none"
                font-weight="none"
                font-size="none"
                text-anchor="none"
                style="mix-blend-mode: normal"
              >
                <path d="M0,172v-172h172v172z" fill="none"></path>
                <g fill="#4c85ff">
                  <path
                    d="M85.94625,3.38625c-1.89469,0.04031 -3.41312,1.59906 -3.38625,3.49375v148.79344l-28.58156,-27.42594c-0.65844,-0.65844 -1.55875,-1.02125 -2.48594,-1.00781c-1.3975,0.04031 -2.64719,0.91375 -3.14437,2.21719c-0.49719,1.30344 -0.16125,2.78156 0.87344,3.73562l36.77844,35.31375l36.77844,-35.31375c0.90031,-0.84656 1.27656,-2.10969 0.98094,-3.30562c-0.29563,-1.19594 -1.20938,-2.15 -2.39188,-2.48594c-1.19594,-0.34937 -2.4725,-0.02687 -3.34594,0.84656l-28.58156,27.42594v-148.79344c0.01344,-0.92719 -0.34937,-1.8275 -1.00781,-2.48594c-0.65844,-0.65844 -1.55875,-1.02125 -2.48594,-1.00781z"
                  ></path>
                </g>
              </g>
            </svg> 
          </div>
          <div class="h-circle-txt">
           @lang('Download <br />  presentation') 
          </div>
        </a>
        <img src="{{ asset('img/header2.jpg') }}" class="h-img_two" alt="header-img" />
        <img src="{{ asset('img/header3.jpg') }}" class="h-img_three" alt="header-img" />
      </div>

      <div class="header-shapes">
          <div class="__line"></div>
          <div class="__circle">
            <div></div>
          </div>
      </div>
     