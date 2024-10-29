@extends('layout.base')
@section('page_title', 'Yêu cầu sửa điểm')
@section('slot')
<div class="card">
    <div class="card-body px-0 pb-2">
        <div class="table-responsive p-0">
            <table class="table align-items-center mb-0">
                <thead>
                    <tr>
                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Học và tên</th>
                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Mã số sinh viên</th>
                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Tên môn</th>
                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Mã môn</th>
                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2"
                            style="max-width: 25%">Tin nhắn</th>
                        <th class="text-secondary opacity-7"></th>
                    </tr>
                </thead>
                <tbody>
                    @forelse($rows as $row)
                    <tr>
                        <td class="text-xs">{{$row->score->student->user->name}}</td>
                        <td class="text-xs">{{$row->score->student->code}}</td>
                        <td class="text-xs">{{$row->score->subject->name}}</td>
                        <td class="text-xs">{{$row->score->subject->code}}</td>
                        <td class="text-xs">{{$row->message}}</td>
                        <td class="align-middle">
                            @if(in_array(auth()->user()->role, ['teacher']))
                            <a class="text-secondary font-weight-bold text-xs"
                                href="{{route('scores.edit', ['id' => $row->score->id])}}">Sửa điểm</a> | 
                            <a class="text-secondary font-weight-bold text-xs"
                                href="{{route('scores.request_edit.delete', ['id' => $row->id])}}">Xóa yêu cầu</a>
                            @endif
                        </td>
                    </tr>
                    @empty
                    <tr><td class="align-middle text-secondary font-weight-bold text-xs">Không có dữ liệu</td></tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
</div>
@stop