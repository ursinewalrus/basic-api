<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::get('campaigns','CampaignController@showData');
Route::post('campaigns','CampaignController@insertData');
Route::delete('campaigns','CampaignController@deleteData');
Route::put('campaigns','CampaignController@updateData');

Route::get('ad_groups','Ad_groupController@showData');
Route::post('ad_groups','Ad_groupController@insertData');
Route::delete('ad_groups','Ad_groupController@deleteData');
Route::put('ad_groups','Ad_groupController@updateData');

Route::get('expanded_text_ad','Expanded_text_adController@showData');
Route::post('expanded_text_ad','Expanded_text_adController@insertData');
Route::delete('expanded_text_ad','Expanded_text_adController@deleteData');
Route::put('expanded_text_ad','Expanded_text_adController@updateData');