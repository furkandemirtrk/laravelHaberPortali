@extends('backend.app')

@section('content')
    <!-- page content -->
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>Yazı Ekle</h3>
                </div>

            </div>

            <div class="clearfix"></div>

            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_content">
                            <form id="formArticleAdd" data-parsley-validate class="form-horizontal form-label-left" method="post">
                                {{csrf_field()}}
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Fotoğraf Ekle
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="file" class="form-control col-md-7 col-xs-12" name="image"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Slider Ekle
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="checkbox" class="form-control col-md-7 col-xs-12" name="slider" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                        Kategori
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select class="form-control" name="cat_id">
                                            <option value="0">Kategori Seç</option>
                                            @foreach($cat as $item)
                                                <option value="{{$item->id}}">{{$item->name}}</option>
                                                @foreach($item->children as $child)
                                                    <option value="{{$child->id}}">{{$item->name}}-->{{$child->name}}</option>
                                                    @foreach($child->children as $child2)
                                                        <option value="{{$child2->id}}">{{$item->name}}-->{{$child->name}}-->{{$child2->name}}</option>
                                                    @endforeach
                                                @endforeach
                                            @endforeach

                                        </select>
                                    </div>
                                </div>
                                {{Form::bsText('name','Başlık','',["required" => "required"])}}
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">İçerik
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea class="form-control col-md-7 col-xs-12" name="content" id="editor"></textarea>
                                    </div>
                                </div>
                                {{Form::bsText('short_content','Kısa İçerik','',["required" => "required"])}}
                                {{Form::bsText('video_url','Video')}}
                                {{Form::bsText('tags','Etiketler','',["required" => "required"])}}
                                <div class="form-group">
                                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                        <button type="submit" class="btn btn-success">Kaydet</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /page content -->
@endsection()

@section('css')
@endsection

@section('js')
    <script src="/js/jquery.form.min.js"></script>
    <script src="/js/jquery.validate.min.js"></script>
    <script src="/js/messages_tr.min.js"></script>
    <script src="/js/sweetalert.min.js"></script>
    <script src="/js/ckeditor4/ckeditor.js"></script>
    {{--<script src="/js/ckeditor/ckeditor.js"></script>--}}
    <!--script src="/js/ckeditor/config.js"></script-->

    <script>
        $(document).ready(function () {
            $('#formArticleAdd').validate();
            $('#formArticleAdd').ajaxForm({
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
    <script>
         // ClassicEditor.create( document.querySelector( '#editor' ));
         // setInterval(function(){
         //     $('.ck-blurred').css('min-height','250px');
         // }, 100);
         //CKEDITOR.replace( 'editor' );
         CKEDITOR.replace( 'editor' );
    </script>
@endsection

