<ul class="navbar">
    <li class="nav-item-one {{ (request()->is('/')) ? 'active' : '' }}">
        <a class="nav-item-link" href="{{ route('landing-page') }}"><div>@lang('Home')</div></a>
    </li>
    <li class="nav-item-two {{ (request()->is('about-us')) ? 'active' : '' }}">
        <a class="nav-item-link" href="{{ route('about') }}"><div>@lang('About')</div></a>
    </li>
    <li class="nav-item-three {{ (request()->is('products')) ? 'active' : '' }}">
        <a class="nav-item-link" href="{{ route('shop.index') }}"><div>@lang('Products')</div></a>
    </li>
    <li class="nav-item-four {{ (request()->is('blog*')) ? 'active' : '' }}">
        <a class="nav-item-link" href="{{ route('blog.list') }}"><div>@lang('News')</div></a>
    </li>
    <li class="nav-item-five {{ (request()->is('contact')) ? 'active' : '' }}">
        <a class="nav-item-link" href="{{ route('contact.index') }}"><div>@lang('Contact')</div></a>
    </li>
</ul>