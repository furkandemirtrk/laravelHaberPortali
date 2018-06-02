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
                            <form id="formCategoryAdd" data-parsley-validate class="form-horizontal form-label-left" method="post">
                                {{csrf_field()}}
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                        Üst Kategori
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
                                {{Form::bsText('name','Başlık')}}
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
    <!--script src="/js/ckeditor/config.js"></script-->

    <script>
        $(document).ready(function () {
            $('#formCategoryAdd').validate();
            $('#formCategoryAdd').ajaxForm({
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

