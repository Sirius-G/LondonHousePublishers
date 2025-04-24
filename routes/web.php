<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/



Auth::routes();

//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/', [App\Http\Controllers\HomeController::class, 'welcome'])->name('welcome');
Route::get('/submissionguide', [App\Http\Controllers\HomeController::class, 'submissionguide'])->name('submissionguide');
Route::get('/recentpublications', [App\Http\Controllers\HomeController::class, 'recentpublications'])->name('recentpublications');
Route::get('/contact', [App\Http\Controllers\HomeController::class, 'contact'])->name('contact');
Route::get('/admin', [App\Http\Controllers\HomeController::class, 'admin'])->name('admin');
Route::post('/admin/update_contents/{id}', [App\Http\Controllers\HomeController::class, 'update_contents'])->name('update.contents');
Route::get('/submissionsportal', [App\Http\Controllers\HomeController::class, 'submissionsportal'])->name('submissionsportal');

Route::post('/', [App\Http\Controllers\HomeController::class, 'index'])->name('search.books');
Route::get('/book_details/{id}', [App\Http\Controllers\HomeController::class, 'book_details']);