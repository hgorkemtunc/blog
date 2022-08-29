<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

Auth::routes();

Route::get('/', [App\Http\Controllers\PostController::class, 'blog'])->name('/'); //main page route
Route::get('/home', [App\Http\Controllers\PostController::class, 'index'])->name('home')->middleware('auth'); //admin page route
Route::get('/blog', [App\Http\Controllers\PostController::class, 'blog'])->middleware('auth'); //main page route for visitors
Route::get('post/create', [App\Http\Controllers\PostController::class, 'create'])->middleware('auth'); //create post route
Route::post('post', [App\Http\Controllers\PostController::class, 'store'])->middleware('auth'); //save post route
Route::get('post/{post}/edit', [App\Http\Controllers\PostController::class, 'edit'])->middleware('auth'); //edit post route
Route::get('post/{post}', [App\Http\Controllers\PostController::class, 'show']); //show post route
Route::put('post/{post}', [App\Http\Controllers\PostController::class, 'update'])->middleware('auth'); //update post route
Route::delete('post/{post}', [App\Http\Controllers\PostController::class, 'destroy'])->middleware('auth'); //delete post route
