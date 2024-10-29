<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/png" href="{{asset('/public/assets/img/logo.jpg')}}">
    <title>
        Quản lý điểm
    </title>
    <!-- Fonts and icons -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
    <!-- Nucleo Icons -->
    <link href="{{asset('/public/assets/css/nucleo-icons.css')}}" rel="stylesheet" />
    <link href="{{asset('/public/assets/css/nucleo-svg.css')}}" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <!-- Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
    <!-- CSS Files -->
    <link id="pagestyle" href="{{asset('/public/assets/css/material-dashboard.css?v=3.0.0')}}" rel="stylesheet" />
</head>

<body class="g-sidenav-show">
    <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0
        border-radius-xl my-3 fixed-start ms-3 bg-gradient-dark" id="sidenav-main">
        <div class="sidenav-header">
            <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
            <a class="navbar-brand m-0" href="{{route('index')}}">
                <img src="{{asset('/public/assets/img/logo.jpg')}}" class="navbar-brand-img h-100" alt="main_logo">
                <span class="ms-1 font-weight-bold text-white">Quản lý sinh viên</span>
            </a>
        </div>
        <ul class="navbar-nav mb-3">
            @if(!auth()->check())
            <li class="nav-item">
                <a class="nav-link text-white bg-gradient-primary" href="{{route('login')}}">
                    <span class="nav-link-text ms-1">
                        Đăng nhập
                    </span>
                </a>
            </li>
            @else
            <li class="nav-item">
                <a class="nav-link text-white bg-gradient-primary" href="{{route('logout')}}">
                    <span class="nav-link-text ms-1">
                        Đăng xuất
                    </span>
                </a>
            </li>
            @endif
        </ul>
        @if(auth()->check())
        <hr class="horizontal light mt-0 mb-2">
        <div class="w-auto overflow-auto" style="max-height: 60%!important">
            <ul class="navbar-nav">
                @if(in_array(auth()->user()->role, ['teacher']))
                <li class="nav-item mt-3">
                    <h6 class="ps-4 ms-2 text-uppercase text-xs text-white font-weight-bolder opacity-8">Sinh viên</h6>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{route('students')}}">
                        <span class="nav-link-text ms-1">
                            Danh sách sinh viên
                        </span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{route('students.add')}}">
                        <span class="nav-link-text ms-1">
                            Thêm sinh viên
                        </span>
                    </a>
                </li>
                <li class="nav-item mt-3">
                    <h6 class="ps-4 ms-2 text-uppercase text-xs text-white font-weight-bolder opacity-8">Giáo viên</h6>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{route('teachers')}}">
                        <span class="nav-link-text ms-1">
                            Danh sách giáo viên
                        </span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{route('teachers.add')}}">
                        <span class="nav-link-text ms-1">
                            Thêm giáo viên
                        </span>
                    </a>
                </li>
                @endif
                <li class="nav-item mt-3">
                    <h6 class="ps-4 ms-2 text-uppercase text-xs text-white font-weight-bolder opacity-8">Môn học</h6>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{route('subjects')}}">
                        <span class="nav-link-text ms-1">
                            Danh sách môn học
                        </span>
                    </a>
                </li>
                @if(in_array(auth()->user()->role, ['teacher']))
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{route('subjects.add')}}">
                        <span class="nav-link-text ms-1">
                            Thêm môn học
                        </span>
                    </a>
                </li>
                @endif
                <li class="nav-item mt-3">
                    <h6 class="ps-4 ms-2 text-uppercase text-xs text-white font-weight-bolder opacity-8">Bảng điểm</h6>
                </li>
                @if(in_array(auth()->user()->role, ['teacher']))
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{route('scores.request_edit')}}">
                        <span class="nav-link-text ms-1">
                            Danh sách yêu cầu sửa điểm
                        </span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{route('scores.add')}}">
                        <span class="nav-link-text ms-1">
                            Thêm điểm
                        </span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{route('scores.subjects')}}">
                        <span class="nav-link-text ms-1">
                            Bảng điểm theo môn
                        </span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{route('scores.classrooms')}}">
                        <span class="nav-link-text ms-1">
                            Bảng điểm theo lớp
                        </span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{route('scores.students')}}">
                        <span class="nav-link-text ms-1">
                            Bảng điểm theo sinh viên
                        </span>
                    </a>
                </li>
                @endif
                @if(in_array(auth()->user()->role, ['student']))
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{route('scores.student', ['id' => auth()->user()->profile->id])}}">
                        <span class="nav-link-text ms-1">
                            Bảng điểm cá nhân
                        </span>
                    </a>
                </li>
                @endif
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{route('scores.semesters')}}">
                        <span class="nav-link-text ms-1">
                            Bảng điểm theo kỳ
                        </span>
                    </a>
                </li>
                <li class="nav-item mt-3">
                    <h6 class="ps-4 ms-2 text-uppercase text-xs text-white font-weight-bolder opacity-8">Lớp</h6>
                </li>
                @if(in_array(auth()->user()->role, ['student']))
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{route('classes.view', ['id' => auth()->user()->profile->class->id])}}">
                        <span class="nav-link-text ms-1">
                            Danh sách lớp
                        </span>
                    </a>
                </li>
                @endif
                @if(in_array(auth()->user()->role, ['teacher']))
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{route('classes')}}">
                        <span class="nav-link-text ms-1">
                            Danh sách lớp
                        </span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{route('classes.add')}}">
                        <span class="nav-link-text ms-1">
                            Thêm lớp
                        </span>
                    </a>
                </li>
                @endif
            </ul>
        </div>
        @endif
    </aside>
    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
        <!-- Navbar -->
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
            <div class="container-fluid py-1 px-3 mt-3">
                <nav aria-label="breadcrumb">
                    <h6 class="font-weight-bolder mb-0">@yield('page_title')</h6>
                </nav>
            </div>
        </nav>
        <!-- End Navbar -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 pb-3">
                    @if (session()->has('error') || session()->has('errors'))
                    @include('components.error-alert', ['message' => session()->get('error') ?? session()->get('errors')->first()])
                    @endif
                    @if (session()->has('success'))
                    @include('components.success-alert', ['message' => session()->get('success')])
                    @endif
                    @yield('slot')
                </div>
            </div>
        </div>
    </main>
    <!--   Core JS Files   -->
    <script src="{{asset('/public/assets/js/core/popper.min.js')}}"></script>
    <script src="{{asset('/public/assets/js/core/bootstrap.min.js')}}"></script>
    <script src="{{asset('/public/assets/js/material-dashboard.min.js?v=3.0.0')}}"></script>
</body>

</html>