@extends('admin.layout.index')

@section('content')
<div class="page-container">
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
                    <div class="page-bar">
                        <ul class="page-breadcrumb">
                            <li>
                                <a href="index.html">Home</a>
                                <i class="fa fa-circle"></i>
                            </li>
                            <li>
                                <span>Components</span>
                            </li>
                        </ul>
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
                    <!-- BEGIN PAGE TITLE-->
                    <h3 class="page-title"> Form Widgets & Tools
                        <small>select2, selectboxit & multi select examples</small>
                    </h3>
                    <!-- END PAGE TITLE-->
                    <!-- END PAGE HEADER-->
                    <div class="row">
                        <div class="col-md-12">
                            <!-- BEGIN PORTLET-->
                            <div class="portlet light form-fit bordered">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="icon-social-dribbble font-green"></i>
                                        <span class="caption-subject font-green bold uppercase">Form Tools</span>
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
                                    <form action="#" id="form-username" class="form-horizontal form-bordered">
                                        <div class="form-body">
                                            <div class="form-group">
                                                <label class="control-label col-md-3">Google reCaptcha</label>
                                                <div class="col-md-9">
                                                    <!-- BEGIN REPCAPTCHA -->
                                                    <div id="recaptcha_widget" class="form-recaptcha">
                                                        <div class="form-recaptcha-img" style="width: 325px">
                                                            <a id="recaptcha_image" href="javascript:;"> </a>
                                                            <div class="recaptcha_only_if_incorrect_sol display-none" style="color:red"> Incorrect please try again </div>
                                                        </div>
                                                        <div class="input-group" style="width: 325px">
                                                            <input type="text" class="form-control" id="recaptcha_response_field" name="recaptcha_response_field">
                                                            <div class="input-group-btn">
                                                                <a class="btn default" href="javascript:Recaptcha.reload()">
                                                                    <i class="fa fa-refresh"></i>
                                                                </a>
                                                                <a class="btn default recaptcha_only_if_image" href="javascript:Recaptcha.switch_type('audio')">
                                                                    <i title="Get an audio CAPTCHA" class="fa fa-headphones"></i>
                                                                </a>
                                                                <a class="btn default recaptcha_only_if_audio" href="javascript:Recaptcha.switch_type('image')">
                                                                    <i title="Get an image CAPTCHA" class="fa fa-picture-o"></i>
                                                                </a>
                                                                <a class="btn default" href="javascript:Recaptcha.showhelp()">
                                                                    <i class="fa fa-question-circle"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <p class="help-block">
                                                            <span class="recaptcha_only_if_image"> Enter the words above </span>
                                                            <span class="recaptcha_only_if_audio"> Enter the numbers you hear </span>
                                                        </p>
                                                    </div>
                                                    <!-- END REPCAPTCHA -->
                                                    <p class="help-block">
                                                        <span class="label label-sm label-danger">Note:&nbsp;</span> Please visit
                                                        <a href="http://www.google.com/recaptcha" target="_blank"> http://www.google.com/recaptcha </a> to learn more about the Google reCaptcha </p>
                                                    <!-- BEGIN GOOGLE RECAPTCHA -->
                                                    <script type="text/javascript">
                                                        var RecaptchaOptions = {
                                                            theme: 'custom',
                                                            custom_theme_widget: 'recaptcha_widget'
                                                        };
                                                    </script>
                                                    <script type="text/javascript" src="https://www.google.com/recaptcha/api/challenge?k=6LcrK9cSAAAAALEcjG9gTRPbeA0yAVsKd8sBpFpR"></script>
                                                    <!-- END GOOGLE RECAPTCHA -->
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3">Username #1(validate on button click)</label>
                                                <div class="col-md-4">
                                                    <div class="input-group" style="text-align:left">
                                                        <input type="text" class="form-control" name="username1" id="username1_input">
                                                        <span class="input-group-btn">
                                                            <a href="javascript:;" class="btn green" id="username1_checker">
                                                                <i class="fa fa-check"></i> Check </a>
                                                        </span>
                                                    </div>
                                                    <div class="help-block"> Type a username(E.g: user1, user2) and check its availability. </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3">Username #2(validate on input focus leave)</label>
                                                <div class="col-md-4">
                                                    <div class="input-icon right">
                                                        <i class="icon-exclamation-sign"></i>
                                                        <input type="text" class="form-control" name="username1" id="username2_input"> </div>
                                                    <div class="help-block"> Type a username(E.g: user1, user2) and check its availability on focus lost </div>
                                                </div>
                                            </div>
                                            <div class="form-group last password-strength">
                                                <label class="control-label col-md-3">Password Strength Checker</label>
                                                <div class="col-md-4">
                                                    <input type="text" class="form-control" name="password" id="password_strength">
                                                    <span class="help-block"> Type a password to check its strength </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-actions">
                                            <div class="row">
                                                <div class="col-md-offset-3 col-md-9">
                                                    <a href="javascript:;" class="btn dark">
                                                        <i class="fa fa-check"></i> Submit</a>
                                                    <a href="javascript:;" class="btn btn-outline grey-salsa">Cancel</a>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <!-- END FORM-->
                                </div>
                            </div>
                            <!-- END PORTLET-->
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <!-- BEGIN PORTLET-->
                            <div class="portlet light form-fit bordered">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="icon-social-dribbble font-green"></i>
                                        <span class="caption-subject font-green bold uppercase">Input Masks</span>
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
                                    <form action="#" class="form-horizontal form-bordered">
                                        <div class="form-body">
                                            <div class="form-group">
                                                <label class="control-label col-md-3">Date 1</label>
                                                <div class="col-md-4">
                                                    <input class="form-control" id="mask_date" type="text" />
                                                    <span class="help-block"> y/m/d </span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3">Date 2</label>
                                                <div class="col-md-4">
                                                    <input class="form-control" id="mask_date1" type="text" />
                                                    <span class="help-block"> change the placeholder </span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3">Date 3</label>
                                                <div class="col-md-4">
                                                    <input class="form-control" id="mask_date2" type="text" />
                                                    <span class="help-block"> multi-char placeholder </span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3">Phone</label>
                                                <div class="col-md-4">
                                                    <input class="form-control" id="mask_phone" type="text" />
                                                    <span class="help-block"> (999) 999-9999 </span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3">Tax ID</label>
                                                <div class="col-md-4">
                                                    <input class="form-control" id="mask_tin" type="text" />
                                                    <span class="help-block"> 99-9999999 </span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3">Number</label>
                                                <div class="col-md-4">
                                                    <input class="form-control" id="mask_number" type="text" />
                                                    <span class="help-block"> mask "9" or mask "99" or ... mask "9999999999" </span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3">Currency</label>
                                                <div class="col-md-4">
                                                    <input class="form-control" id="mask_currency" type="text" />
                                                    <span class="help-block"> 123456 => € ___.__1.234,56 </span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3">Currency 2</label>
                                                <div class="col-md-4">
                                                    <input class="form-control" id="mask_currency2" type="text" />
                                                    <span class="help-block"> 123456 => € ___.__1.234,56(left aligned) </span>
                                                </div>
                                            </div>
                                            <div class="form-group last">
                                                <label class="control-label col-md-3">SSN</label>
                                                <div class="col-md-4">
                                                    <input class="form-control" id="mask_ssn" type="text" />
                                                    <span class="help-block"> 999-99-9999. remove the empty mask on blur or when not empty removes the optional trailing part </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-actions">
                                            <div class="row">
                                                <div class="col-md-offset-3 col-md-9">
                                                    <button type="submit" class="btn purple">
                                                        <i class="fa fa-check"></i> Submit</button>
                                                    <button type="button" class="btn default">Cancel</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <!-- END FORM-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <!-- BEGIN PORTLET-->
                            <div class="portlet light form-fit bordered">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="icon-social-dribbble font-green"></i>
                                        <span class="caption-subject font-green bold uppercase">Textarea Autosize</span>
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
                                    <form action="#" id="form-username" class="form-horizontal form-bordered">
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Demo 1</label>
                                            <div class="col-md-9">
                                                <textarea class="form-control autosizeme" rows="4" placeholder="Autosizeme..."></textarea>
                                                <p class="help-block"> type more to see how this autosize feature works </p>
                                            </div>
                                        </div>
                                        <div class="form-group last">
                                            <label class="col-md-3 control-label">Demo 2</label>
                                            <div class="col-md-9">
                                                <textarea class="form-control autosizeme" rows="6" placeholder="Autosizeme..."></textarea>
                                                <p class="help-block"> apply <code>autosizeme</code> class to any textarea to activate this autosize feature </p>
                                            </div>
                                        </div>
                                        <div class="form-actions">
                                            <div class="row">
                                                <div class="col-md-offset-3 col-md-9">
                                                    <button type="submit" class="btn red">
                                                        <i class="fa fa-check"></i> Submit</button>
                                                    <button type="button" class="btn default">Cancel</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- END PORTLET-->
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <!-- BEGIN EXTRAS PORTLET-->
                            <div class="portlet box green">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="fa fa-gift"></i>CKEditor Editor </div>
                                    <div class="tools">
                                        <a href="javascript:;" class="collapse"> </a>
                                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                                        <a href="javascript:;" class="reload"> </a>
                                        <a href="javascript:;" class="remove"> </a>
                                    </div>
                                </div>
                                <div class="portlet-body form">
                                    <!-- BEGIN FORM-->
                                    <form action="#" class="form-horizontal form-bordered">
                                        <div class="form-body">
                                            <div class="form-group last">
                                                <label class="control-label col-md-3">CKEditor</label>
                                                <div class="col-md-9">
                                                    <textarea class="ckeditor form-control" name="editor1" rows="6"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-actions">
                                            <div class="row">
                                                <div class="col-md-offset-3 col-md-9">
                                                    <a href="javascript:;" class="btn green">
                                                        <i class="fa fa-check"></i> Submit</a>
                                                    <a href="javascript:;" class="btn btn-outline grey-salsa">Cancel</a>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <!-- END FORM-->
                                </div>
                            </div>
                            <!-- END EXTRAS PORTLET-->
                        </div>
                    </div>
                </div>
                <!-- END CONTENT BODY -->
            </div>
            <!-- END CONTENT -->
</div>
@endsection