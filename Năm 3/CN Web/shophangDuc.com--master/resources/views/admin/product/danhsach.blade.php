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
<h1>Danh sách sản phẩm</h1>

       <div class="row">
           <div class="col-md-12">
            <a href="admin/product/them" class="btn btn-circle btn-info">
                <i class="fa fa-plus"></i>
                <span class="hidden-xs"> Thêm sản phẩm </span>
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
                    <th width="15%"> Image </th>
                    <th width="15%"> Name </th>
                    <th width="15%"> Overview </th>
                    <th width="15%"> Id_category </th>
                    <th width="15%"> Price </th>
                    <th width="10%"> Discount</th>
                    <th width="15%"> Is_active</th>
                    <th width="20%"> Actions </th>
                </tr>
                @foreach($product as $tl)
                <tr role="row" class="filter">
                    <td></td>
                    <td>
                        {{$tl->id}}
                    </td>
                    <td>
                        <img width="80" src="upload/product/{{$tl->image}}"/>
                    </td>
                    <td>
                        {{$tl->name}}
                    </td>
                    <td>
                        {{$tl->overview}}
                    </td>
                    <td>
                        <select name="idcategory" class="form-control form-filter input-sm">
                            @foreach($theloai as $thel)
                            <option
                            @if($tl->id_category==$thel->id){{"selected"}}
                            @endif
                            value="{{$thel->id}}">{{$thel->name}}</option>
                            @endforeach
                        </select>
                    </td>
                    <td>
                        {{$tl->price}}
                    </td>
                    <td>
                        {{$tl->discount}}
                    </td>
                    <td>
                        {{$tl->is_active}}
                    </td>
                    <td>
                        <div class="center">
                            <i class="fa fa-pencil fa-fw"></i>
                            <a href="admin/product/sua/{{$tl->id}}">Edit</a>
                        </div>
                        <div class="center">
                            <i class="fa fa-trash-o fa-fw"></i>
                            <a href="admin/product/xoa/{{$tl->id}}">Dele</a>
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