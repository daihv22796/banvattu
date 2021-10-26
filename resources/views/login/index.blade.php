@extends('layouts.login')

@section('title', 'Đăng nhập hệ thống')

@section('content')
    <!-- BEGIN LOGO -->
    <div class="logo">
        <!-- <a href="#">
            <img src="{{ asset('/uploads/logos').'/'.setting('company.logo','') }}" alt="HRM - Thinh Phong Co., Ltd" /> 
        </a> -->
        <h3 class="font-green">PHẦN MỀM QUẢN LÝ HỢP ĐỒNG</h3>
        <h3 class="font-green">BAN VẬT TƯ - NTP</h3>
    </div>
    <!-- END LOGO -->
    <!-- BEGIN LOGIN -->
    <div class="content" style="margin-top: 0px;">
        <!-- BEGIN LOGIN FORM -->
        <form class="login-form" action="{{ route('login.post') }}" method="post">
            @csrf()
            <h3 class="form-title font-green">Đăng Nhập</h3>
            @if($errors->any())
            <div class="alert alert-danger">
                <button class="close" data-close="alert"></button>
                @foreach($errors->all() as $error)
                    <p> {{ $error }} </p>
                @endforeach
            </div>
            @endif
            
            <!-- MESSAGE -->
            @include('partials.flash-message')

            <div class="form-group">
                <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                <label class="control-label visible-ie8 visible-ie9">Email</label>
                <input value="" class="form-control form-control-solid placeholder-no-fix" type="text" autocomplete="off" placeholder="Email" name="email" /> </div>
            <div class="form-group">
                <label class="control-label visible-ie8 visible-ie9">Mật khẩu</label>
                <input value="" class="form-control form-control-solid placeholder-no-fix" type="password" autocomplete="off" placeholder="Mật khẩu" name="password" /> </div>
            <div class="form-group">
                <button type="submit" class="btn green uppercase">Đăng nhập</button>
                <label class="rememberme check mt-checkbox mt-checkbox-outline">
                    <input type="checkbox" name="remember" value="1" />Nhớ mật khẩu?
                    <span></span>
                </label>
            </div>
        </form>
        <!-- END LOGIN FORM -->
    </div>
    <div class="copyright"> v1.0.0-beta - 2021 © <a href="{{ setting('company.website','') }}" target="_blank">{{ setting('company.name','') }}</a></div>
    
    <!--[if lt IE 9]>
    <script src="../assets/global/plugins/respond.min.js"></script>
    <script src="../assets/global/plugins/excanvas.min.js"></script> 
    <script src="../assets/global/plugins/ie8.fix.min.js"></script> 
    <![endif]-->
@endsection

@section('script')
    <script>
        $(document).ready(function()
        {
            $('.copy-account').on('click', function(e){
                e.preventDefault();
                var $account = $(this).data('account');
                var $password = $(this).data('password');
                // console.log($account + $password);
                $('.login-form input[name="email"]').val($account);
                $('.login-form input[name="password"]').val($password);
            });
        });
    </script>
@endsection()