@extends('frontend.app')

@section('content')
    <section id="ContactContent">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-21">
                <div class="contact_area">
                    <div class="contact_bottom">
                        <div class="contact_us wow fadeInRightBig">
                            <h2>Giriş Yap</h2>
                            <form action="{{ route('login') }}" method="post" class="contact_form">
                                @csrf
                                <input id="email" type="email" placeholder="E-Mail Adresi" class="form-control {{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus>
                                @if ($errors->has('email'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif

                                <input id="password" placeholder="Şifre"  type="password" class="form-control {{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>
                                @if ($errors->has('password'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                                <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> {{ __('Remember Me') }}
                                <input type="submit" value="Giriş Yap" />

                                <a class="btn btn-link" href="{{ route('password.request') }}">
                                    {{ __('Forgot Your Password?') }}
                                </a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="contact_area">
                    <div class="contact_bottom">
                        <div class="contact_us wow fadeInRightBig">
                            <h2>Kayıt Ol</h2>
                            <form class="contact_form" method="POST" action="{{ route('register') }}">
                                @csrf
                                <input id="name" placeholder="Ad Soyad" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                                <input id="email" placeholder="E-Mail Adresi" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                                <input id="password" placeholder="Şifre" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                                <input placeholder="Şifre Tekrar" id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                                <input type="submit" value="Kayıt Ol" />
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('css')
@endsection

@section('js')
@endsection