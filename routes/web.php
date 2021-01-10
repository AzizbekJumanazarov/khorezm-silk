<?php

Route::get('/', 'LandingPageController@index')->name('landing-page');
Route::get('/lang/{lang}', 'HomeController@switchLang')->name('lang.switch');

Route::group(['prefix' => 'blog'], function() {
    Route::get('/', 'BlogController@list')->name('blog.list');
    Route::get('/offset/', 'BlogController@offset')->name('blog.offset');
    Route::get('/{slug}', 'BlogController@show')->name('blog.show');
});

Route::get('/gallery', 'GalleryController@index')->name('gallery.index');
Route::get('/gallery/offset', 'GalleryController@offset')->name('gallery.offset');

Route::get('/reviews', 'ReviewController@index')->name('reviews.index');

Route::get('/about-us', 'HomeController@about')->name('about');

Route::get('/contact', 'ContactController@index')->name('contact.index');
Route::post('/contact', 'ContactController@send')->name('contact.send');

Route::get('/products', 'ShopController@index')->name('shop.index');

Auth::routes();

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
