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
<h1>Danh sách hóa đơn</h1>

       <div class="row">
           <div class="col-md-12">
            <a href="admin/order_product/them" class="btn btn-circle btn-info">
                <i class="fa fa-plus"></i>
                <span class="hidden-xs"> Thêm hóa đơn</span>
            </a>
            <a href="getPDF" class="btn btn-circle btn-info">
                <i class="fa fa-plus"></i>
                <span class="hidden-xs"> Xuất hóa đơn</span>
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
                    <th width="15%"> Id_customer </th>
                    <th width="15%"> Payment </th>
                    <th width="10%"> Total </th>
                    <th width="10%"> Order_status </th>
                    <th width="10%"> Date_order </th>
                    <th width="15%"> Actions </th>
                </tr>
                @foreach($order_product as $dt)
                <tr role="row" class="filter">
                    <td> </td>
                    <td>
                        {{$dt->id}}
                    </td>
                    <td>
                        {{$dt->id_customer}}
                    </td>
                    <td>
                        {{$dt->payment}}
                    </td> 
                    <td>
                        {{$dt->total}}
                    </td>
                    <td>
                        <select name="product_status" class="form-control form-filter input-sm">
                            <option value="">{{$dt->order_status}}</option>
                        </select>
                    </td>
                    <td>
                        {{$dt->updated_at}}
                    </td>
                        <td>
                        <div class="center">
                            <i class="fa fa-pencil fa-fw"></i>
                            <a href="admin/order_product/sua/{{$dt->id}}">Edit</a>
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