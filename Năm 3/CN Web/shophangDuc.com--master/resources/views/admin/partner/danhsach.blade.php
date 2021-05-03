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
<h1>Danh sách khách hàng</h1>

       <div class="row">
           <div class="col-md-12">
            <a href="admin/customer/them" class="btn btn-circle btn-info">
                <i class="fa fa-plus"></i>
                <span class="hidden-xs"> Thêm khách hàng </span>
            </a>
            <br>
            <table class="danhsach">
              <tr role="row" class="heading">
                    <tr role="row" class="heading">
                      <th width="1%">
                          <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                              <input type="checkbox" class="group-checkable" data-set="#sample_2 .checkboxes" />
                              <span></span>
                          </label>
                      </th>
                      <th width="10%"> ID </th>
                      <th width="15%"> Name </th>
                      <th width="15%"> Email </th>
                      <th width="15%"> Level</th>
                      <th width="10%"> Created_at </th>
                      <th width="10%"> Actions </th>
                  </tr>
                  @foreach($user as $us)
                  <tr role="row" class="filter">
                      <td> </td>
                       <td>{{$us->id}}</td>
                       <td>{{$us->name}}</td>
                       <td>{{$us->email}}</td>
                       <td>{{$us->level}}</td>
                       <td>{{$us->created_at}}</td>
                      <td>
                          <div class="center">
                              <i class="fa fa-pencil fa-fw"></i>
                              <a href="admin/users/sua/{{$us->id}}">Edit</a>
                              </div>
                              <div class="center">
                              <i class="fa fa-trash-o fa-fw"></i>
                              <a href="admin/users/xoa/{{$us->id}}">Dele</a>
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