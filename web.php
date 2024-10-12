<?php

use App\Controllers\Authcontroller;
use App\Controllers\CategoryController;
use App\Routes\Route;

Route::get("/", [CategoryController::class,"index"]);
Route::get("/test", [CategoryController::class,"test"]);
Route::get("/about", [CategoryController::class,"about"]);

Route::post("/about", [CategoryController::class,"about"]);
Route::post("/contact", [CategoryController::class,"contact"]);
Route::post("/show", [CategoryController::class,"show"]);
Route::post("/delete", [CategoryController::class,"delete"]);
Route::post("/deletejanr", [CategoryController::class,"deletejanr"]);
Route::post("/create", [CategoryController::class,"create"]);
Route::post("/createbook", [CategoryController::class,"createbook"]);
Route::post("/edit", [CategoryController::class,"edit"]);
Route::get("/janrlar", [CategoryController::class,"janrlar"]);
Route::get("/kitoblar", [CategoryController::class,"kitoblar"]);
Route::post("/updatejanr", [CategoryController::class,"updatejanr"]);
Route::post("/add", [CategoryController::class,"add"]);

Route::get('/login',[Authcontroller::class],"loginpage");
Route::post('/login',[Authcontroller::class],'login');
Route::post('/register',[CategoryController::class],'registerPage');
Route::post('/logout',[CategoryController::class],'logout');