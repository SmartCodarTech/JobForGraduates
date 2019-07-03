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
    return view('dashboard');
 
})->middleware(['auth','admin']);


Auth::routes();


Route::get('/', function () {
    return view('user_dashboard');
  
})->middleware(['auth','user']);


Route::get('/', function () {
    return view('employeer_dashboard');
  
})->middleware(['auth','employeer']);


//Auth::routes();

     Route::get('/dashboard', 'DashboardController@index');
     Route::get('/user_dashboard'     , 'UserDashboardController@index');
     Route::get('/employeer_dashboard', 'EmployeersDashboardController@index');

// Route::get('/system-management/{option}', 'SystemMgmtController@index');
Route::get('/profile', 'ProfileController@index');



Route::post('user-management/search', 'UserManagementController@search')->name('user-management.search');
Route::resource('user-management', 'UserManagementController');

Route::resource('employeer-management', 'EmployeersController');
Route::post('employeer-management/search', 'EmployeersController@search')->name('employeer-management.search');

Route::post('mail-management/search', 'SendEmailController@search')->name('mail-management.search');
Route::get('mail-management','SendMailController@sendMail');
Route::resource('mail-management', 'SendEmailController');


Route::resource('graduate-management', 'GraduateController');
Route::post('graduate-management/search', 'GraduateController@search')->name('graduate-management.search');

Route::resource('system-management/employeer', 'EmployeerController');
Route::post('system-management/employeer/search', 'EmployeersController@search')->name('employeer.search');

Route::resource('system-management/graduate', 'GraduateController');
Route::post('system-management/graduate/search', 'GraduateController@search')->name('graduate.search');

Route::resource('system-management/education', 'EdducationController');
Route::post('system-management/education/search', 'EducationController@search')->name('education.search');

Route::resource('system-management/skills', 'SkillsController');
Route::post('system-management/skills/search', 'SkillsController@search')->name('skills.search');

Route::resource('system-management/jobs', 'JobsController');
Route::post('system-management/jobs/search', 'JobsController@search')->name('jobs.search');

Route::resource('system-management/category', 'AddcategoryController');
Route::post('system-management/category/search', 'AddCategoryController@search')->name('category.search');

Route::resource('system-management/course', 'AddCoursesController');
Route::post('system-management/course/search', 'AddCoursesController@search')->name('course.search');

Route::resource('system-management/country', 'AddCountryController');
Route::post('system-management/country/search', 'AddCountryController@search')->name('country.search');

Route::resource('system-management/schools', 'AddSchoolsController');
Route::post('system-management/schools/search', 'AddSchoolsController@search')->name('schools.search');

Route::resource('system-management/salary', 'EmployeeSalaryController');
Route::post('system-management/salary/search', 'EmployeeSalaryController@search')->name('salary.search');



Route::get('system-management/report', 'ReportController@index');
Route::post('system-management/report/search', 'ReportController@search')->name('report.search');
Route::post('system-management/report/excel', 'ReportController@exportExcel')->name('report.excel');
Route::post('system-management/report/pdf', 'ReportController@exportPDF')->name('report.pdf');

Route::get('avatars/{name}', 'EmployeeManagementController@load');
Route::get('avatars/{name}', 'CivilianEmployeesController@load');
Route::get('my-chart', 'ChartController@index');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
