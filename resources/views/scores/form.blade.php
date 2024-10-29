@extends('layout.base')
@section('page_title', isset($rec) ? 'Cập nhật điểm' : 'Thêm điểm')
@section('slot')
<form id="form" class="text-start" method="POST" action="{{isset($rec) ? route('scores.update', ['id' => $rec->id]) : route('scores.create')}}">
    {{ csrf_field() }}
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <label class="form-label mt-3">Điểm thành phần 1 *</label>
                <div class="input-group input-group-outline">
                    <input type="number" step="0.01" name="tp1" class="form-control" required value="{{$rec->tp1 ?? old('tp1') ?? ''}}">
                </div>
            </div>
            <div class="col-md-4">
                <label class="form-label mt-3">Điểm thành phần 2</label>
                <div class="input-group input-group-outline">
                    <input type="number" step="0.01" name="tp2" class="form-control" value="{{$rec->tp2 ?? old('tp2') ?? ''}}">
                </div>
            </div>
            <div class="col-md-4">
                <label class="form-label mt-3">Điểm quá trình</label>
                <div class="input-group input-group-outline">
                    <input type="number" step="0.01" name="qt" class="form-control" value="{{$rec->qt ?? old('qt') ?? ''}}">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <label class="form-label mt-3">Điểm cuối kì</label>
                <div class="input-group input-group-outline">
                    <input type="number" step="0.01" name="ck" class="form-control" value="{{$rec->ck ?? old('ck') ?? ''}}">
                </div>
            </div>
            <div class="col-md-6">
                <label class="form-label mt-3">Điểm tổng kết</label>
                <div class="input-group input-group-outline">
                    <input type="number" step="0.01" name="tk" class="form-control" value="{{$rec->tk ?? old('tk') ?? ''}}">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <label class="form-label mt-3">Chọn sinh viên *</label>
                <div class="overflow-auto" style="max-height: 50vh;">
                    @foreach($students as $row)
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="student_id"
                            value="{{$row->profile->id}}" {{ ($rec->student_id ?? old('student_id')) == $row->profile->id ? 'checked' : '' }}>
                        <label class="custom-control-label" for="customRadio1">{{$row->name}} - {{$row->profile->code}}</label>
                    </div>
                    @endforeach
                </div>
            </div>
            <div class="col-md-6">
                <label class="form-label mt-3">Chọn môn *</label>
                <div class="overflow-auto" style="max-height: 50vh;">
                    @foreach($subjects as $row)
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="subject_id"
                            value="{{$row->id}}" {{ ($rec->subject_id ?? old('subject_id')) == $row->id ? 'checked' : '' }}>
                        <label class="custom-control-label" for="customRadio1">{{$row->name}}</label>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>

    <input type="submit" class="btn bg-gradient-primary my-4 mb-2" value="{{ isset($rec) ? 'Cập nhật' : 'Thêm'}}">
</form>
@stop