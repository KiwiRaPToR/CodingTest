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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::middleware(['auth'])->group(function() {
    Route::resource('tasks', 'TaskController', [
        'only' => [
            'index', 'store', 'update'
        ]
    ]);
});

Route::middleware(['auth'])->group(function() {
    Route::resource('burndown', 'BurndownController', [
        'only' => [
            'index'
        ]
    ]);	
});

Route::middleware(['auth'])->group(function() {
	
	Route::get('burndown/getBurndown', 'BurndownController@getBurndown');

});