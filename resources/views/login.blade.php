@extends('layout.base')
@section('page_title', 'Đăng nhập')
@section('slot')
<div class="col-lg-4 col-md-8 col-12 mx-auto mt-5">
    <div class="card z-index-0 fadeIn3 fadeInBottom">
        <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
            <div class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1">
                <h4 class="text-white font-weight-bolder text-center mb-0">Đăng nhập</h4>
            </div>
        </div>
        <div class="card-body">
            <form class="text-start" method="POST" action="{{route('login.post')}}">
                <label class="form-label mt-3">Tên tài khoản</label>
                <div class="input-group input-group-outline">
                    <input type="text" name="username" class="form-control" required>
                </div>
                <label class="form-label mt-3">Mật khẩu</label>
                <div class="input-group input-group-outline">
                    <input type="password" name="password" class="form-control" required>
                </div>
                <div class="text-center">
                    <input type="submit" class="btn bg-gradient-primary w-100 my-4 mb-2" value="Đăng nhập">
                </div>
                {{ csrf_field() }}
            </form>
        </div>
    </div>
</div>
@stop