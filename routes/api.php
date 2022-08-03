<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\IndiCatorController;
use App\Http\Controllers\FileUploadController;
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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('Strategies', [IndiCatorController::class, 'strategies']);
Route::post('timeframeSelectors', [IndiCatorController::class, 'timeframeSelectors']);
Route::post('financialinstrument', [IndiCatorController::class, 'FinancialInstrument']);
Route::post('IndicatorIcons', [IndiCatorController::class, 'IndicatorIcons']);
Route::get('IndicatorIist', [IndiCatorController::class, 'IndicatorIist']);
Route::post('strategies_mapping', [IndiCatorController::class, 'strategies_mapping']);
Route::post('timeframe_mapping', [IndiCatorController::class, 'timeframe_mapping']);
Route::post('financial_instrument_mapping', [IndiCatorController::class, 'financial_instrument_mapping']);
Route::get('mapping_list', [IndiCatorController::class, 'mapping_list']);
/***
 * FIle UPlode
 */
Route::post('Upload',[FileUploadController::class,'Upload']);
Route::get('Upload_list',[FileUploadController::class,'Upload_list']);
Route::post('Update_image',[FileUploadController::class,'Update_image']);