<?php

use Illuminate\Support\Facades\Route;

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

// Route::get('/', function () {
//     return url('/home');
// });


Auth::routes();

Route::get('/', 'HomeController@index')->name('home');

Route::get('/datasiswa', 'DataSiswaController@index')->name('datasiswa');

Route::get('/dashboard', 'DashboardController@index')->name('dashboard');

Route::get('/kelas', 'kelasController@index')->name('kelas');

Route::get('/petugas', 'PetugasController@index')->name('petugas');

Route::get('/spp', 'SPPController@index')->name('spp');

Route::get('/pembayaranspp', 'PembayaranSPPController@index')->name('pembayaranspp');

Route::get('/laporan', 'LaporanController@index')->name('laporan');