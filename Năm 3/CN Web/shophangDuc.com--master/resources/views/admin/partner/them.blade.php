@extends('admin.layout.index')

@section('content')
<div class="page-container">
    <style type="text/css">
        .actions.btn-set {
        position: relative;
        left: 746px;
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
                                <span class="caption-subject font-green bold uppercase">Th??m ?????i t??c</span>
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
                            @if(count($errors)>0)
                            <div class="alert alert-danger">
                                @foreach($errors->all() as $err)
                                {{$err}}<br>
                                @endforeach
                            </div>
                            @endif
                            @if(session('thongbao'))
                                <div class="alert alert-success">
                                    {{session('thongbao')}}
                                </div>
                            @endif
                            <form action="admin/partner/them" method="POST" id="form-username" class="form-horizontal form-bordered">
                                <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <div class="form-body">
                                    <div class="form-group">
                                        <label class="control-label col-md-2">Name</label>
                                        <div class="col-md-9">
                                            <div class="input-icon right">
                                                <i class="icon-exclamation-sign"></i>
                                                <input type="text" class="form-control" name="name" id="username2_input"> </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">Image</label>
                                        <div class="col-md-9">
                                            <div class="input-icon right">
                                                <i class="icon-exclamation-sign"></i>
                                                <input type="file" class="form-control" name="hinh" id="username2_input"> </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">Address</label>
                                        <div class="col-md-9">
                                            <div class="input-icon right">
                                                <i class="icon-exclamation-sign"></i>
                                                <input type="text" class="form-control" name="address" id="username2_input"> </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">Description</label>
                                        <div class="col-md-9">
                                            <div class="input-icon right">
                                                <i class="icon-exclamation-sign"></i>
                                                 <textarea class="form-control" name="description"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">Email</label>
                                        <div class="col-md-9">
                                            <div class="input-icon right">
                                                <i class="icon-exclamation-sign"></i>
                                                <input type="text" class="form-control" name="email" id="username2_input"> </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">Phone</label>
                                        <div class="col-md-9">
                                            <div class="input-icon right">
                                                <i class="icon-exclamation-sign"></i>
                                                <input type="text" class="form-control" name="phone" id="username2_input"> </div>
                                        </div>
                                    </div>
                                    <div class="form-group last password-strength">
                                        <label class="control-label col-md-2">is_active</label>
                                        <div class="col-md-9">
                                            <input type="text" name="active">
                                        </div>
                                    </div>
                                        <div class="actions btn-set">
                                        <button type="button" name="back" class="btn btn-secondary-outline">
                                            <i class="fa fa-angle-left"></i> Back</button>
                                        <button type="reset" class="btn btn-secondary-outline">
                                            <i class="fa fa-reply"></i> Reset</button>
                                        <button type="submit"class="btn btn-success" >
                                            <i class="fa fa-check"></i> Save</button>
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