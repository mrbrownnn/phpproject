<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Subject as MainModel;
use Illuminate\Support\Facades\DB;
use App\Models\TeacherProfile;
use App\Models\TeacherSubject;
use App\Models\User;

class SubjectController extends Controller
{
    public function index()
    {
        $data['rows'] = MainModel::all();
        return view('subjects.index', $data);
    }

    public function add()
    {
        $data['teachers'] = User::where('role', 'teacher')->get();
        return view('subjects.form', $data);
    }

    public function create(Request $request)
    {
        try {
            $params = $request->all();
            DB::transaction(function () use ($params) {
                $rec = MainModel::create($params);
                if(isset($params['teacher_id']))
                    foreach($params['teacher_id'] as $row)
                        TeacherSubject::create(['subject_id' => $rec->id, 'teacher_id' => $row]);
            });
            return redirect()->route('subjects')->withSuccess("Đã thêm");
        } catch (\Exception $e) {
            return redirect()->back()->withError($e->getMessage())->withInput();
        }
    }

    public function edit($id)
    {
        $data['rec'] = MainModel::findOrFail($id);
        $data['teachers'] = User::where('role', 'teacher')->get();
        $data['teacher_subject_list'] = TeacherSubject::where('subject_id', $id)->get();
        return view('subjects.form')->with($data);
    }

    public function update(Request $request, $id)
    {
        try {
            $rec = MainModel::findOrFail($id);
            $params = $request->all();
            DB::transaction(function () use ($params, $rec) {
                $teacher_subject_list = $rec->teacherSubjectList;
                foreach($teacher_subject_list as $row)
                    $row->delete();
                $rec->update($params);
                if(isset($params['teacher_id']))
                    foreach($params['teacher_id'] as $row)
                        TeacherSubject::create(['subject_id' => $rec->id, 'teacher_id' => $row]);
            });
            return redirect()->route('subjects')->withSuccess("Đã cập nhật");
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
}
