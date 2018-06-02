@extends('backend.app')

@section('content')
    <!-- page content -->
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>İçerik</h3>
                </div>

            </div>

            <div class="clearfix"></div>

            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">

                        <div class="x_content">
                            <p class="text-muted font-13 m-b-30">
                            </p>
                            <table id="" class="table">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Adı</th>
                                    <th>Üst Kategori</th>
                                    <th></th>
                                </tr>
                                </thead>


                                <tbody>
                                @php
                                    $i=1;
                                @endphp
                                @foreach($cat as $category)
                                    <tr>
                                        <th scope="row">{{$category->id}}</th>
                                        <td>{{$category->name}}</td>
                                        <td>{{$category->topCategory($category->cat_id)}}</td>
                                        <td>
                                            <form id="form" data-parsley-validate class="form-horizontal form-label-left" method="post">
                                                {{csrf_field()}}
                                                <input type="hidden" value="{{$category->id}}" name="id">
                                                <input type="hidden" value="{{$i}}" name="order">
                                                <input type="submit" value="Sil" class="btn btn-danger">
                                            </form>
                                        </td>
                                    </tr>
                                    @php
                                        $i++;
                                    @endphp
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /page content -->

@endsection()


@section('css')
    <link href="/backend/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="/backend/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="/backend/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="/backend/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="/backend/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
@endsection

@section('js')
    <script src="/js/jquery.form.min.js"></script>
    <script src="/js/jquery.validate.min.js"></script>
    <script src="/js/messages_tr.min.js"></script>
    <script src="/js/sweetalert.min.js"></script>
    <script>
        $(document).ready(function () {

            $('form').ajaxForm({
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


