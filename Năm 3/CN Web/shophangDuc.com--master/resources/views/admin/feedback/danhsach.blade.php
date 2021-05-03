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
     <style>
     table.danhsach {
    border: 2px solid blue;
    }

    tr {
        border: 2px solid blue;
    }

    td {
        border: 2px solid #b7b7e8;
    }
    th {
    border: 1px solid #b7b7e8;
}
     </style>
   <div class="page-content">
<h1>Danh sách phản hồi</h1>

       <div class="row">
           <div class="col-md-12">
            <a href="admin/feedback/them" class="btn btn-circle btn-info">
                <i class="fa fa-plus"></i>
                <span class="hidden-xs"> Thêm phản hồi </span>
            </a>
            <br>
            <table class="danhsach">
            <tr role="row" class="heading">
                    <th width="1%">
                        <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                            <input type="checkbox" class="group-checkable" data-set="#sample_2 .checkboxes" />
                            <span></span>
                        </label>
                    </th>
                    <th width="10%"> ID </th>
                    <th width="15%"> Id_users </th>
                    <th width="15%"> Id_product </th>
                    <th width="15%"> Id_news </th>
                    <th width="15%"> Content </th>
                    <th width="15%"> Created_at </th>
                    <th width="15%"> Status </th>
                    <th width="15%"> Actions </th>
                </tr>
                @foreach($feedback as $tl)
                <tr role="row" class="filter">
                    <td></td>
                    <td>
                        {{$tl->id}}
                    </td>
                    <td>
                        {{$tl->id_users}}
                    </td>
                    <td>
                        {{$tl->id_product}}
                    </td>
                    <td>
                        {{$tl->id_news}}
                    </td>
                    <td>
                        {{$tl->content}}
                    </td>
                    <td>
                        {{$tl->created_at}}
                    </td>
                    <td>
                        <select class="table-group-action-input form-control input-medium" name="theloai">
                       @foreach($status as $st)
                        <option
                        @if($tl->id_status==$st->id){{"selected"}}
                        @endif
                        value="{{$st->id}}">{{$st->name}}</option>
                        @endforeach
                    </select>
                    </td>
                    <td>
                        <div class="center">
                            <i class="fa fa-pencil fa-fw"></i>
                            <a href="admin/feedback/sua/{{$tl->id}}">View</a>
                        </div>
                        <div class="center">
                            <i class="fa fa-trash-o fa-fw"></i>
                            <a href="admin/feedback/xoa/{{$tl->id}}">Dele</a>
                        </div>
                    </td>
                </tr>
                @endforeach

            </table>
                    </div>
                   </div>
               </div>
               <!-- End: life time stats -->
           </div>
       </div>
     </div>
        <!-- END CONTENT BODY -->
    </div>
    <!-- END CONTENT -->
@endsection