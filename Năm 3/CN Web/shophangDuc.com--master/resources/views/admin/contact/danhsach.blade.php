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
<h1>Danh sách liên hệ</h1>

       <div class="row">
           <div class="col-md-12">
            <a href="admin/order_product/them" class="btn btn-circle btn-info">
                <i class="fa fa-plus"></i>
                <span class="hidden-xs"> Thêm liên hệ</span>
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
            <th width="5%"> ID </th>
            <th width="15%"> Image </th>
            <th width="15%"> Name </th>
            <th width="15%"> Email </th>
            <th width="15%"> Phone </th>
            <th width="15%"> Address </th>
            <th width="15%"> Live_chat </th>
            <th width="15%"> is_active </th>
            <th width="15%"> Actions </th>
        </tr>
        @foreach($contact as $dt)
        <tr role="row" class="filter">
            <td> </td>
            <td>
                {{$dt->id}}
            </td>
            <td>
                {{$dt->image}}
            </td>
            <td>
                {{$dt->name}}
            </td>
            <td>
                {{$dt->email}}
            </td>
            <td>
                {{$dt->address}}
            </td>
            <td>
                {{$dt->phone}}
            </td><td>
                {{$dt->live_chat}}
            </td>
            <td>
                <select name="product_status" class="form-control form-filter input-sm">
                    <option value="">{{$dt->is_active}}</option>
                    <option value="published">Published</option>
                    <option value="notpublished">Not Published</option>
                    <option value="deleted">Deleted</option>
                </select>
            </td>

                <td>
                <div class="margin-bottom-5">
                    <button class="btn btn-sm btn-success filter-submit margin-bottom">
                    <span class="glyphicon glyphicon-pencil"></span><a href="admin/partner/sua">Edit</a></button>
                </div>
                <button class="btn btn-sm btn-default filter-cancel">
                    <i class="glyphicon glyphicon-trash"></i><a href="admin/partner/xoa">Delete</a></button>

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