@extends('backend.app')
@section('content')
    <!-- page content -->
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>Ayarlar</h3>
                </div>

            </div>

            <div class="clearfix"></div>

            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_content">
                        <div class="" role="tabpanel" data-example-id="togglable-tabs">
                            <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                                <li role="presentation" class="active"><a href="#genel_ayarlar" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Genel Ayarlar</a>
                                </li>
                                <li role="presentation" class=""><a href="#iletisim_ayarlari" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">İletişim</a>
                                </li>
                                <li role="presentation" class=""><a href="#sosyal_medya" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">Sosyal Medya</a>
                                </li>
                                <li role="presentation" class=""><a href="#google_api" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">Google API</a>
                                </li>
                                <li role="presentation" class=""><a href="#mail_ayarlari" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">Mail Ayarlari</a>
                                </li>
                            </ul>
                            <form id="formSettings" data-parsley-validate class="form-horizontal form-label-left" method="post">
                                <div id="myTabContent" class="tab-content">
                                    {{csrf_field()}}
                                    <div role="tabpanel" class="tab-pane fade active in" id="genel_ayarlar" aria-labelledby="home-tab">
                                        {{--<div class="form-group">--}}
                                            {{--<label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Mevcut Logo--}}
                                            {{--</label>--}}
                                            {{--<div class="col-md-6 col-sm-6 col-xs-12">--}}
                                                {{--<img src="\uploads\img\{{$settings->logo}}" alt="">--}}
                                            {{--</div>--}}
                                        {{--</div>--}}
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Site Logo
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="file" class="form-control col-md-7 col-xs-12" name="logo"/>
                                                <input type="hidden" name="eski_logo" value="{{$settings->logo}}">
                                            </div>
                                        </div>
                                        {{Form::bsText('title','Site Başlığı',$settings->title)}}
                                        {{Form::bsText('keywords','Site Anahtar Kelimeler',$settings->keywords)}}
                                        {{Form::bsText('description','Site Açıklamaları',$settings->description)}}
                                        {{Form::bsText('url','Site Adresi',$settings->url)}}
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="iletisim_ayarlari" aria-labelledby="profile-tab">
                                        {{Form::bsText('telefon','Telefon',$settings->telefon)}}
                                        {{Form::bsText('gsm','GSM',$settings->gsm)}}
                                        {{Form::bsText('faks','Faks',$settings->faks)}}
                                        {{Form::bsText('adres','Adres',$settings->adres)}}
                                        {{Form::bsText('il','İl',$settings->il)}}
                                        {{Form::bsText('ilce','İlçe',$settings->ilce)}}
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="sosyal_medya" aria-labelledby="profile-tab">
                                        {{Form::bsText('facebook','Facebook',$settings->facebook)}}
                                        {{Form::bsText('twitter','Twitter',$settings->twitter)}}
                                        {{Form::bsText('instagram','Instagram',$settings->instagram)}}
                                        {{Form::bsText('youtube','Youtube',$settings->youtube)}}
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="google_api" aria-labelledby="profile-tab">
                                        {{Form::bsText('google','Google Hesabı',$settings->google)}}
                                        {{Form::bsText('recapctha','Google Recapctha',$settings->recapctha)}}
                                        {{Form::bsText('maps','Google Maps',$settings->maps)}}
                                        {{Form::bsText('analystic','Google Analystic',$settings->analystic)}}
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="mail_ayarlari" aria-labelledby="profile-tab">
                                        {{Form::bsText('smtp_user','Kullanıcı Adı',$settings->smtp_user)}}
                                        {{Form::bsPassword('password','smtp_password','Şifre',$settings->smtp_password)}}
                                        {{Form::bsText('smtp_host','SMTP Host',$settings->smtp_host)}}
                                        {{Form::bsText('smtp_port','SMTP Port',$settings->smtp_port)}}
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                            <button type="submit" class="btn btn-success">Kaydet</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

@section('css')

@endsection

@section('js')
    <script src="/js/jquery.form.min.js"></script>
    <script src="/js/jquery.validate.min.js"></script>
    <script src="/js/messages_tr.min.js"></script>
    <script src="/js/sweetalert.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#formSettings').validate();
            $('#formSettings').ajaxForm({
                beforeSubmit:function () {

                },
                success:function (response) {
                    swal(
                        response.baslik,
                        response.icerik,
                        response.durum
                    )
                }
            });
        });
    </script>

@endsection