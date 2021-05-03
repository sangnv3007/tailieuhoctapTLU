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
<h1>Danh sách thể loại</h1>

       <div class="row">
           <div class="col-md-12">
            <a href="admin/category/them" class="btn btn-circle btn-info">
                <i class="fa fa-plus"></i>
                <span class="hidden-xs"> Thêm thể loại </span>
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
                    <th width="15%"> Name </th>
                    <th width="20%"> Description</th>
                    <th width="15%">Id_Partner</th>
                    <th width="10%"> is_active </th>
                    <th width="15%"> Created_at </th>
                    <th width="15%"> Actions </th>
                </tr>
                @foreach($theloai as $tl)
                <tr role="row" class="filter">
                    <td></td>
                    <td>
                        {{$tl->id}}
                    </td>
                    <td>
                        {{$tl->name}}
                    </td>
                    <td>
                        {{$tl->cate_note}}
                    </td>
                     <td>
                        <select name="partner" class="form-control form-filter input-sm">
                            @foreach($partner as $thel)
                            <option
                            @if($tl->id_partner==$thel->id){{"selected"}}
                            @endif
                            value="{{$thel->id}}">{{$thel->id}}</option>
                            @endforeach
                        </select>
                    </td>
                    <td>
                        {{$tl->is_active}}
                    </td>
                    <td>
                        {{$tl->created_at}}
                    </td>
                    <td>
                         <div class="center">
                            <i class="fa fa-pencil fa-fw"></i>
                            <a href="admin/category/sua/{{$tl->id}}">Edit</a>
                        </div>
                        <div class="center">
                            <i class="fa fa-trash-o fa-fw"></i>
                            <a href="admin/category/xoa/{{$tl->id}}">Dele</a>
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