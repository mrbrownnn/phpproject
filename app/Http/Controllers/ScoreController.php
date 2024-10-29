<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Score as MainModel;
use App\Models\Subject;
use App\Models\User;
use App\Models\RequestEditScore;
use App\Models\Classroom;
use App\Models\StudentProfile;
use Illuminate\Support\Facades\DB;

class ScoreController extends Controller
{
    public function viewSubjects()
    {
        $data['rows'] = Subject::all();
        return view('scores.subject.list', $data);
    }

    public function bySubject($id)
    {
        $data['rows'] = MainModel::where('subject_id', $id)->get();
        $data['rec'] = Subject::findOrFail($id);
        return view('scores.subject.index', $data);
    }

    public function viewStudents()
    {
        $data['rows'] = User::where('role', 'student')->get();
        return view('scores.student.list', $data);
    }

    public function byStudent($id)
    {
        $data['rows'] = MainModel::where('student_id', $id)->get();
        $data['rec'] = StudentProfile::findOrFail($id);
        return view('scores.student.index', $data);
    }

    public function viewSemesters()
    {
        if(auth()->user()->role == 'student') {
            $user = auth()->user();
            $semesters = [];
            $scores = MainModel::where('student_id', $user->profile->id)->get();
            foreach($scores as $score) {
                if(!in_array($score->subject->semester, $semesters))
                    $semesters[] = $score->subject->semester;
            }
            sort($semesters);
            foreach($semesters as $index => $semester) {
                $semesters[$index] = ['semester' => $semester];
            }
            $data['rows'] = $semesters;
        } else
            $data['rows'] = Subject::select('semester')->distinct()->orderBy('semester', 'DESC')->get();
        return view('scores.semester.list', $data);
    }

    public function bySemester(Request $request, $semester)
    {
        $data['rec'] = $semester;
        $data['rows'] = MainModel::all();
        $data['rows_filtered'] = [];
        foreach ($data['rows'] as $row) {
            if ($row->subject->semester == $semester) {
                if(
                    !(auth()->user()->role == 'student')
                    || (auth()->user()->role == 'student' && auth()->user()->profile->id == $row->student->id)
                )
                    array_push($data['rows_filtered'], $row);
                    
            }
        }
        $data['rows'] = $data['rows_filtered'];
        return view('scores.semester.index', $data);
    }

    public function viewClassrooms()
    {
        $data['rows'] = Classroom::all();
        return view('scores.classroom.list', $data);
    }

    public function byClassroom(Request $request, $id)
    {
        $data['rec'] = Classroom::findOrFail($id);
        $data['rows'] = MainModel::all();
        $data['rows_filtered'] = [];
        foreach ($data['rows'] as $row) {
            if ($row->student->class->id == $id) {
                array_push($data['rows_filtered'], $row);
            }
        }
        $data['rows'] = $data['rows_filtered'];
        return view('scores.classroom.index', $data);
    }

    public function add()
    {
        $data['subjects'] = Subject::all();
        $data['students'] = User::where('role', 'student')->get();
        return view('scores.form')->with($data);
    }

    public function create(Request $request)
    {
        try {
            $params = $request->all();
            DB::transaction(function () use ($params) {
                MainModel::create($params);
            });
            return redirect()->route('scores.students')->withSuccess("Đã thêm");
        } catch (\Exception $e) {
            return redirect()->back()->withError($e->getMessage())->withInput();
        }
    }

    public function edit($id)
    {
        $data['subjects'] = Subject::all();
        $data['students'] = User::where('role', 'student')->get();
        $data['rec'] = MainModel::findOrFail($id);
        return view('scores.form')->with($data);
    }

    public function update(Request $request, $id)
    {
        try {
            $rec = MainModel::findOrFail($id);
            $params = $request->all();
            DB::transaction(function () use ($params, $rec) {
                $rec->update($params);
            });
            return redirect()->route('scores.students')->withSuccess("Đã cập nhật");
        } catch (\Exception $e) {
            return redirect()->back()->withError($e->getMessage())->withInput();
        }
    }

    public function delete($id)
    {
        try {
            $rec = MainModel::findOrFail($id);
            $rec->delete();
            return redirect()->back()->withSuccess("Đã xóa");
        } catch (\Exception $e) {
            return redirect()->back()->withError($e->getMessage());
        }
    }

    public function requestEdit() {
        $data['rows'] = RequestEditScore::all();
        return view('scores.request_edit', $data);
    }

    public function requestEditAdd($id) {
        $data['rec'] = MainModel::findOrFail($id);
        return view('scores.request_edit_form', $data);
    }

    public function requestEditCreate(Request $request, $id) {
        try {
            $params = $request->all();
            $rec = MainModel::findOrFail($id);
            $params['score_id'] = $rec->id;
            DB::transaction(function () use ($params) {
                RequestEditScore::create($params);
            });
            return redirect()->back()->withSuccess("Đã thêm");
        } catch (\Exception $e) {
            return redirect()->back()->withError($e->getMessage())->withInput();
        }
    }

    public function requestEditDelete($id)
    {
        try {
            $rec = RequestEditScore::findOrFail($id);
            $rec->delete();
            return redirect()->back()->withSuccess("Đã xóa");
        } catch (\Exception $e) {
            return redirect()->back()->withError($e->getMessage());
        }
    }
}
