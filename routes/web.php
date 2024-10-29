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

Route::middleware('auth')->namespace('App\Http\Controllers')->group(function () {
    Route::get('/', function () {
        if(auth()->user()->role == 'teacher')
            return redirect()->route('students');
        else return redirect()->route('scores.student', ['id' => auth()->user()->profile->id]);
    })->name('index');

    Route::get('/students', 'StudentController@index')->name('students');
    Route::get('/students/create', 'StudentController@add')->name('students.add');
    Route::post('/students/create', 'StudentController@create')->name('students.create');
    Route::get('/students/update/{id}', 'StudentController@edit')->name('students.edit');
    Route::post('/students/update/{id}', 'StudentController@update')->name('students.update');
    Route::get('/students/delete/{id}', 'StudentController@delete')->name('students.delete');

    Route::get('/teachers', 'TeacherController@index')->name('teachers');
    Route::get('/teachers/create', 'TeacherController@add')->name('teachers.add');
    Route::post('/teachers/create', 'TeacherController@create')->name('teachers.create');
    Route::get('/teachers/update/{id}', 'TeacherController@edit')->name('teachers.edit');
    Route::post('/teachers/update/{id}', 'TeacherController@update')->name('teachers.update');
    Route::get('/teachers/delete/{id}', 'TeacherController@delete')->name('teachers.delete');

    Route::get('/classes', 'ClassroomController@index')->name('classes');
    Route::get('/classes/create', 'ClassroomController@add')->name('classes.add');
    Route::post('/classes/create', 'ClassroomController@create')->name('classes.create');
    Route::get('/classes/update/{id}', 'ClassroomController@edit')->name('classes.edit');
    Route::post('/classes/update/{id}', 'ClassroomController@update')->name('classes.update');
    Route::get('/classes/delete/{id}', 'ClassroomController@delete')->name('classes.delete');
    Route::get('/classes/{id}', 'ClassroomController@view')->name('classes.view');

    Route::get('/subjects', 'SubjectController@index')->name('subjects');
    Route::get('/subjects/create', 'SubjectController@add')->name('subjects.add');
    Route::post('/subjects/create', 'SubjectController@create')->name('subjects.create');
    Route::get('/subjects/update/{id}', 'SubjectController@edit')->name('subjects.edit');
    Route::post('/subjects/update/{id}', 'SubjectController@update')->name('subjects.update');
    Route::get('/subjects/delete/{id}', 'SubjectController@delete')->name('subjects.delete');

    Route::get('/scores/create', 'ScoreController@add')->name('scores.add');
    Route::post('/scores/create', 'ScoreController@create')->name('scores.create');
    Route::get('/scores/update/{id}', 'ScoreController@edit')->name('scores.edit');
    Route::post('/scores/update/{id}', 'ScoreController@update')->name('scores.update');
    Route::get('/scores/delete/{id}', 'ScoreController@delete')->name('scores.delete');
    Route::get('/scores/subjects', 'ScoreController@viewSubjects')->name('scores.subjects');
    Route::get('/scores/subject/{id}', 'ScoreController@bySubject')->name('scores.subject');
    Route::get('/scores/students', 'ScoreController@viewStudents')->name('scores.students');
    Route::get('/scores/student/{id}', 'ScoreController@byStudent')->name('scores.student');
    Route::get('/scores/semesters', 'ScoreController@viewSemesters')->name('scores.semesters');
    Route::get('/scores/semester/{id}', 'ScoreController@bySemester')->name('scores.semester');
    Route::get('/scores/classrooms', 'ScoreController@viewClassrooms')->name('scores.classrooms');
    Route::get('/scores/classroom/{id}', 'ScoreController@byClassroom')->name('scores.classroom');
    Route::get('/scores/request_edit', 'ScoreController@requestEdit')->name('scores.request_edit');
    Route::get('/scores/request_edit/create/{id}', 'ScoreController@requestEditAdd')->name('scores.request_edit.add');
    Route::post('/scores/request_edit/create/{id}', 'ScoreController@requestEditCreate')->name('scores.request_edit.create');
    Route::get('/scores/request_edit/delete/{id}', 'ScoreController@requestEditDelete')->name('scores.request_edit.delete');

    Route::get('/logout', 'LoginController@logout')->name('logout');
});

Route::middleware('guest')->namespace('App\Http\Controllers')->group(function () {
    Route::get('/login', function () {
        return view('login');
    })->name('login');

    Route::post('/login', 'LoginController@authenticate')->name('login.post');
});
