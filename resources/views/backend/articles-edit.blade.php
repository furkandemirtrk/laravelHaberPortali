@extends('backend.app')
@section('content')
    <!-- page content -->
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>Yazı Düzenle</h3>
                </div>

            </div>

            <div class="clearfix"></div>

            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_content">
                            <form id="formArticleEdit" data-parsley-validate class="form-horizontal form-label-left" method="post">
                                {{csrf_field()}}
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Mevcut Fotoğraf
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <img src="\uploads\img\{{$article->image}}" alt="" width="250">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Fotoğraf Değiştir
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="file" class="form-control col-md-7 col-xs-12" name="image"/>
                                        <input type="hidden" name="old_image" value="{{$article->image}}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Slider Ekle
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="checkbox" style="height:25px; width:25px" name="slider" {{$article->slider == 1 ? 'checked' : '' }}/>
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
                                                <option value="{{$item->id}}" {{$item->id == $article->cat_id ? 'selected' : '   '}}>{{$item->name}}</option>
                                                @foreach($item->children as $child)
                                                    <option value="{{$child->id}}" {{$item->id == $article->cat_id ? 'selected' : '   '}}>{{$item->name}}-->{{$child->name}}</option>
                                                    @foreach($child->children as $child2)
                                                        <option value="{{$child2->id}}" {{$item->id == $article->cat_id ? 'selected' : '   '}}>{{$item->name}}-->{{$child->name}}-->{{$child2->name}}</option>
                                                    @endforeach
                                                @endforeach
                                            @endforeach

                                        </select>
                                    </div>
                                </div>
                                {{Form::bsText('name','Başlık',$article->name,["required" => "required"])}}
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">İçerik
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea class="form-control col-md-7 col-xs-12" name="content" id="editor">{{$article->content}}</textarea>
                                    </div>
                                </div>
                                {{Form::bsText('short_content','Kısa İçerik',$article->short_content,["required" => "required"])}}
                                {{Form::bsText('video_url','Video',$article->video_url)}}
                                {{Form::bsText('tags','Etiketler',$article->tags,["required" => "required"])}}
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
@endsection

@section('css')
@endsection

@section('js')

    <script src="/js/jquery.form.min.js"></script>
    <script src="/js/jquery.validate.min.js"></script>
    <script src="/js/messages_tr.min.js"></script>
    <script src="/js/sweetalert.min.js"></script>
    <script src="/js/ckeditor4/ckeditor.js"></script>

    <script>
        $(document).ready(function () {
            $('formArticleEdit').validate();
            $('#formArticleEdit').ajaxForm({
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

    <script>
        CKEDITOR.replace( 'editor' );
    </script>
@endsection