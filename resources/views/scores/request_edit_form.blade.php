@extends('layout.base')
@section('page_title', 'Yêu cầu sửa điểm')
@section('slot')
<form id="form" class="text-start" method="POST" action="{{route('scores.request_edit.create', ['id' => $rec->id])}}">
    {{ csrf_field() }}
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <label class="form-label mt-3">Điểm thành phần 1 *</label>
                <div class="input-group input-group-outline">
                    <input disabled type="number" step="0.01" name="tp1" class="form-control" required value="{{$rec->tp1 ?? old('tp1') ?? ''}}">
                </div>
            </div>
            <div class="col-md-4">
                <label class="form-label mt-3">Điểm thành phần 2</label>
                <div class="input-group input-group-outline">
                    <input disabled type="number" step="0.01" name="tp2" class="form-control" value="{{$rec->tp2 ?? old('tp2') ?? ''}}">
                </div>
            </div>
            <div class="col-md-4">
                <label class="form-label mt-3">Điểm quá trình</label>
                <div class="input-group input-group-outline">
                    <input disabled type="number" step="0.01" name="qt" class="form-control" value="{{$rec->qt ?? old('qt') ?? ''}}">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <label class="form-label mt-3">Điểm cuối kì</label>
                <div class="input-group input-group-outline">
                    <input disabled type="number" step="0.01" name="ck" class="form-control" value="{{$rec->ck ?? old('ck') ?? ''}}">
                </div>
            </div>
            <div class="col-md-6">
                <label class="form-label mt-3">Điểm tổng kết</label>
                <div class="input-group input-group-outline">
                    <input disabled type="number" step="0.01" name="tk" class="form-control" value="{{$rec->tk ?? old('tk') ?? ''}}">
                </div>
            </div>
        </div>
        <label class="form-label mt-3">Sinh viên: {{$rec->student->user->name}} - {{$rec->student->code}}</label><br>
        <label class="form-label mt-3">Môn học: {{$rec->subject->name}} - {{$rec->subject->code}}</label>
        <div class="col-md-12">
            <label class="form-label mt-3">Tin nhắn</label>
            <div class="input-group input-group-outline">
                <input type="text" name="message" class="form-control" value="{{$rec->message ?? old('message') ?? ''}}">
            </div>
        </div>
    </div>

    <input type="submit" class="btn bg-gradient-primary my-4 mb-2" value="Yêu cầu">
</form>
@stop