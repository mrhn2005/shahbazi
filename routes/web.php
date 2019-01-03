<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::middleware(['web', 'localized'])
    ->prefix(request()->segment(1))
    ->group(function () {
     App::setLocale(request()->segment(1));   
    Route::get('/','Front\HomeController@home_page');
    
});




Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
