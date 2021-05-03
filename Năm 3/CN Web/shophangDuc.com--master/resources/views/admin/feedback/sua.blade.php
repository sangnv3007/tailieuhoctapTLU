@extends('admin.layout.index')

@section('content')
<div class="page-container">
    <style type="text/css">
        .actions.btn-set {
        position: relative;
        left: 628px;
        bottom: 14px;
        /* border: 2px solid #cdcddb; */
        width: 300px;
        /* background: #f7f7fa; */
    }

    label.control-label.col-md-2 {
        /* border: 0px solid blue; */
        text-align: left;
        background: #e9e9f0;
        padding: 12px;
    }
    </style>
    <!-- BEGIN SIDEBAR -->
    <div class="page-sidebar-wrapper">
        <!-- BEGIN SIDEBAR -->
        @include('admin.layout.menu_admin');
        <!-- END SIDEBAR -->
    </div>
    <!-- END SIDEBAR -->
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <!-- BEGIN CONTENT BODY -->
        <div class="page-content">
            <!-- BEGIN PAGE HEADER-->
            <!-- BEGIN PAGE BAR -->
            <div class="page-bar">
                <div class="page-toolbar">
                    <div class="btn-group pull-right">
                        <button type="button" class="btn green btn-sm btn-outline dropdown-toggle" data-toggle="dropdown"> Actions
                            <i class="fa fa-angle-down"></i>
                        </button>
                        <ul class="dropdown-menu pull-right" role="menu">
                            <li>
                                <a href="#">
                                    <i class="icon-bell"></i> Action</a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-shield"></i> Another action</a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-user"></i> Something else here</a>
                            </li>
                            <li class="divider"> </li>
                            <li>
                                <a href="#">
                                    <i class="icon-bag"></i> Separated link</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- END PAGE BAR -->
            <!-- END PAGE HEADER-->
            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN PORTLET-->
                    <div class="portlet light form-fit bordered">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="icon-social-dribbble font-green"></i>
                                <span class="caption-subject font-green bold uppercase">Thêm sản phẩm</span>
                            </div>
                            <div class="actions">
                                <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                                    <i class="icon-cloud-upload"></i>
                                </a>
                                <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                                    <i class="icon-wrench"></i>
                                </a>
                                <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                                    <i class="icon-trash"></i>
                                </a>
                            </div>
                        </div>
                        <div class="portlet-body form">
                            <!-- BEGIN FORM-->
                            <form action="admin/feedback/sua/{{$feedback->id}}" method="POST" class="form-horizontal form-bordered" enctype="multipart/form-data">
                                <input type="hidden" name="_token" value="{{csrf_token()}}" />
                                <div class="form-body">
                                    <div class="form-group">
                                        <label class="control-label col-md-2">Id_user</label>
                                        <div class="col-md-9">
                                            <div class="input-icon right">
                                                <i class="icon-exclamation-sign"></i>
                                                <input type="text" class="form-control" name="id_users" value="{{$feedback->id_users}}"> </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">Id_product</label>
                                        <div class="col-md-9">
                                            <div class="input-icon right">
                                                <i class="icon-exclamation-sign"></i>
                                                <input type="text" class="form-control" name="id_product" value="{{$feedback->id_product}}"> </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">Content</label>
                                        <div class="col-md-9">
                                            <div class="input-icon right">
                                                <i class="icon-exclamation-sign"></i>
                                                 <textarea id="ten" class="form-control" name="ten" value="{{$feedback->content}}">{{$feedback->content}}</textarea>
                                                   <script>CKEDITOR.replace('ten');</script>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">Created_at</label>
                                        <div class="col-md-9">
                                            <div class="input-icon right">
                                                <i class="icon-exclamation-sign"></i>
                                                <input type="date" class="form-control" name="created" value="{{$feedback->created_at}}">{{$feedback->created_at}} </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">Status</label>
                                        <div class="col-md-9">
                                            <div class="input-icon right">
                                            <select class="table-group-action-input form-control input-medium" name="theloai">
                                               @foreach($status as $st)
                                                <option
                                                @if($feedback->id_status==$st->id){{"selected"}}
                                                @endif
                                                value="{{$st->id}}">{{$st->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <br>
                                        <div class="actions btn-set">
                                        <button type="submit" name="save" class="btn btn-secondary-outline">
                                            <i class="fa fa-angle-left"></i> Back</button>
                                    </div>
                            </form>
                            <!-- END FORM-->
                        </div>
                    </div>
                    <!-- END PORTLET-->
                </div>
            </div>
        </div>
        <!-- END CONTENT BODY -->
    </div>
    <!-- END CONTENT -->
</div>
@endsection