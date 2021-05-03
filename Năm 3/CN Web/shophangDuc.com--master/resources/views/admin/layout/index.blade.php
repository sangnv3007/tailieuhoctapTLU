<!DOCTYPE html>
<html lang="en">
    <!-- BEGIN HEAD -->
    <head>
        <meta charset="utf-8" />
        <title>shopHangDuc.com</title>
        <base href="{{asset('')}}">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="admin_asset/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="admin_asset/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="admin_asset/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="admin_asset/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="admin_asset/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
        <link href="admin_asset/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="admin_asset/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet" type="text/css" />
        <link href="admin_asset/global/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="admin_asset/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="admin_asset/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="admin_asset/layouts/layout/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="admin_asset/layouts/layout/css/themes/darkblue.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="admin_asset/layouts/layout/css/custom.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME LAYOUT STYLES -->
        <link rel="shortcut icon" href="favicon.ico" /> </head>
    <!-- END HEAD -->
        <script type="text/javascript" language="javascript" src="admin_asset/ckeditor/ckeditor.js"></script>
    <body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
        <!-- BEGIN HEADER -->
        @include('admin.layout.header')
        <!-- END HEADER -->
        <!-- BEGIN HEADER & CONTENT DIVIDER -->
        <div class="clearfix"> </div>
        <!-- END HEADER & CONTENT DIVIDER -->
        <!-- BEGIN CONTAINER -->
        @yield('content')
        <!-- END CONTAINER -->
        <!-- BEGIN FOOTER -->
        @include('admin.layout.footer');
        <!-- END FOOTER -->
     <!-- BEGIN CORE PLUGINS -->
        <script src="admin_asset/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="admin_asset/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="admin_asset/global/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="admin_asset/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
        <script src="admin_asset/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="admin_asset/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="admin_asset/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="admin_asset/global/scripts/datatable.js" type="text/javascript"></script>
        <script src="admin_asset/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
        <script src="admin_asset/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
        <script src="admin_asset/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
        <script src="admin_asset/global/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
        <script src="admin_asset/global/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="admin_asset/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="admin_asset/pages/scripts/ecommerce-products.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="admin_asset/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
        <script src="admin_asset/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
        <script src="admin_asset/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
    </body>

</html>