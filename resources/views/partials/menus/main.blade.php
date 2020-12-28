<ul class="nav-menu">
            <li class="{{ (request()->is('/')) ? 'active' : '' }}"><a href="{{ route('landing-page') }}">@lang('Home')</a></li>
            <li class="{{ (request()->is('about-us')) ? 'active' : '' }}"><a href="{{ route('about') }}">@lang('About')</a></li>
            <li class="{{ (request()->is('products')) ? 'active' : '' }}"><a href="{{ route('shop.index') }}">@lang('Products')</a></li>
            <li class="{{ (request()->is('/')) ? 'active' : '' }}"><a href="{{ route('reviews') }}">@lang('Reviews')</a></li> 
            <li class="{{ (request()->is('blog*')) ? 'active' : '' }}"><a href="{{ route('blog.list') }}">@lang('News')</a></li>
            <li class="{{ (request()->is('/')) ? 'active' : '' }}"><a href="{{ route('gallery') }}">@lang('Gallery')</a></li>            
            <li class="{{ (request()->is('contact')) ? 'active' : '' }}"><a href="{{ route('contact.index') }}">@lang('Contact')</a></li>

            <!-- reviews and gallery should be checked for active again -->
</ul>