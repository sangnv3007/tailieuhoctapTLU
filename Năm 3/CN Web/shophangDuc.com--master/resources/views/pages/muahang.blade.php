@extends('layout.index')
@section('content')
<section class="main-container col1-layout" id="ins_cart">
	<div class="main container">
		<div class="col-main">
			<div class="cart">
				<div class="page-title">
					<h2>Giỏ hàng  </h2>
				</div>
				<div class="insCartTemp">
					<div class="row">
						<div class="col-md-8 col-sm-12 col-xs-12 colCart left">
							<form action="/cart" method="post" novalidate>
								<div class="table-responsive">
									<table class="data-table cart-table table" id="shopping-cart-table">
										<thead>
											<tr class="first last">
												<th rowspan="1">&nbsp;</th>
												<th rowspan="1"><span class="nobr">Tên sản phẩm</span></th>
												<th colspan="1" class="a-center hidden-xs"><span class="nobr">Giá</span></th>
												<th class="a-center" rowspan="1">Số lượng</th>
												<th colspan="1" class="a-center hidden-xs">Thành tiền</th>
											</tr>
										</thead>
@foreach($content as $item)
		<tbody>
			<tr>
				<td class="image text-center"><a class="product-image" title="Ấm điện đa năng" href="Ấm điện đa năng"><img alt="Ấm điện đa năng" src="upload/product/.$item['options']['image']"></a></td>
				<td class="text-left"><h2 class="product-name">
				 <a href="Ấm điện đa năng">{{$item->name}}</a> </h2>
					<a class="button remove-item" title="Xóa" href="xoa-san-pham/{{'027c91341fd5cf4d2579b49c4b6a90da'}}" data-id="5123344"><i class="fa fa-trash" aria-hidden="true"></i> <span>Xóa sản phẩm</span></a>
				</td>
				<td class="a-right hidden-xs text-center"><span class="cart-price"> <span class="price">{{$item->price}}đ</span> </span></td>
				<td class="text-center tdQty">
					<div class="groupQty">
						<button type="button" class="qtyControl minus">-</button>
						<input type="number" maxlength="12" min="1" class="input-text qty" title="Số lượng" size="4" value="1" name="Lines" id="updates_5123344">
						<button type="button" class="qtyControl plus">+</button>
					</div>
				</td>
				<td class="text-center hidden-xs"><span class="cart-price"> <span class="price">{{$item->price}}đ</span></td>
			</tr>
		</tbody>

@endforeach								<tfoot>
											<tr class="first last">
												<td class="a-right last" colspan="7">
													<button class="button btn-continue" title="Tiếp tục mua hàng" type="button" onclick="window.location.href='sanpham'">
														<span>
														<span>Tiếp tục mua hàng</span>
													</span>
													</button>

												</td>
											</tr>
										</tfoot>
									</table>
								</div>
							</form>
						</div>
						<div class="col-md-4 col-sm-12 col-xs-12 colCart right">
							<div class="totals">
								<div class="inner">
									<table class="table shopping-cart-table-total" id="shopping-cart-totals-table">
										<tfoot>
											<tr>
												<td colspan="1" class="a-left"><strong>Tổng tiền</strong>
												</td>
												<td class="a-right text-right"><strong><span class="price">{{$total}}</span></strong></td>
											</tr>
										</tfoot>
									</table>
									<br>
									<ul class="checkout">
										<li>
											<button class="button btn-proceed-checkout" title="Tiến hành thanh toán" type="button" onclick="window.location.href='checkout'"><span>Tiến hành thanh toán</span></button>
										</li>              
									</ul>
									
									<div class="pd_saler">
										<h3>Dịch vụ & Khuyến mãi</h3>
										
										<p>
											Đang cập nhật
										</p>
										
										
										<p>
											Đang cập nhật
										</p>
										
										
										<p>
											Đang cập nhật
										</p>
										
										
										<p>
											Đang cập nhật
										</p>
										
										
									</div>
									
								</div>
								<!--inner--> 
							</div>
						</div>
					</div>
				</div>
				
			</div>
		
		</div>
	</div>
</section>

</div>
@endsection
