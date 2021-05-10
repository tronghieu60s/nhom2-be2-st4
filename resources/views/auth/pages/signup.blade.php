@extends('layouts.auth', ['title' => 'Sign Up'])

@section('content')
    <div class="wrap d-md-flex">
        <div class="text-wrap p-4 p-lg-5 text-center d-flex align-items-center order-md-last">
            <div class="text w-100">
                <h2>Welcome to sign up</h2>
                <p>You already have an account?</p>
                <a href="/sign-in" class="btn btn-white btn-outline-white">Sign Up</a>
            </div>
        </div>
        <div class="login-wrap p-4 p-lg-5">
            <div class="d-flex">
                <div class="w-100">
                    <h3 class="mb-4">Sign Up</h3>
                </div>
            </div>
            @if (session('success'))
                <div class="alert alert-success" role="alert">
                    {{ session('success') }}
                </div>
            @endif
            @if (session('error'))
                <div class="alert alert-danger" role="alert">
                    {{ session('error') }}
                </div>
            @endif
            <form class="signin-form" method="POST">
                @csrf
                <div class="form-group mb-3">
                    <label class="label" for="name">Username</label>
                    <input name="username" type="text" class="form-control" placeholder="Username" required>
                </div>
                <div class="form-group mb-3">
                    <label class="label" for="password">Password</label>
                    <input name="password" type="password" class="form-control" placeholder="Password" required>
                </div>
                <div class="form-group mb-3">
                    <label class="label" for="password">Re Password</label>
                    <input name="repassword" type="password" class="form-control" placeholder="Password" required>
                </div>
                <div class="form-group">
                    <button type="submit" class="form-control btn btn-primary submit px-3">Sign
                        Up</button>
                </div>
                <div class="form-group d-md-flex">
                    <div class="w-100">
                        By clicking the register button, you agree to the <a href=""> Terms of Service </a>
                        and our <a href=""> Privacy Policy </a>.
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection
