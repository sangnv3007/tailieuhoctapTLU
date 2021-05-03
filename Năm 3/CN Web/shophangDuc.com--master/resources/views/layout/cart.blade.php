@extends('layout.index')
@section('content')
<section class="main-container col1-layout" id="ins_cart">
	<div class="main container">
		<div class="col-main">
			<div class="cart">
				<div class="page-title">
					<h2>Giỏ hàng</h2>
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

										<tbody>
											<tr>
												<td class="image text-center"><a class="product-image" title="Đèn led LE" href="/den-led-le"><img alt="Đèn led LE" src="//bizweb.dktcdn.net/thumb/small/100/239/697/products/3323122d-5960-425f-8305-c2f7aecf996a-2406-000002937a7969d8-jpeg.jpg?v=1516684770940"></a></td>
												<td class="text-left"><h2 class="product-name"> <a href="/den-led-le">Đèn led LE</a> </h2>
													<span class="variant-title" style="display: none" >Default Title</span><br>
													<a class="button remove-item" title="Xóa" href="/cart/change?line=1&amp;quantity=0" data-id="5123344"><i class="fa fa-trash" aria-hidden="true"></i> <span>Xóa sản phẩm</span></a>
												</td>
												<td class="a-right hidden-xs text-center"><span class="cart-price"> <span class="price">1.100.000₫</span> </span></td>
												<td class="text-center tdQty">
													<div class="groupQty">
														<button type="button" class="qtyControl minus">-</button>
														<input type="number" maxlength="12" min="1" class="input-text qty" title="Số lượng" size="4" value="1" name="Lines" id="updates_5123344">
														<button type="button" class="qtyControl plus">+</button>
													</div>
												</td>
												<td class="text-center hidden-xs"><span class="cart-price"> <span class="price">1.100.000₫</span> </span></td>
											</tr>
											<tr>
												<td class="image text-center"><a class="product-image" title="Bộ dao zwilling 7 món" href="/bo-dao-zwilling-7-mon"><img alt="Bộ dao zwilling 7 món" src="//bizweb.dktcdn.net/thumb/small/100/239/697/products/a2db4038-711a-4e43-96b8-642c672ddccf-4341-0000050abb8a6aaa-jpeg.jpg?v=1517408359280"></a></td>
												<td class="text-left"><h2 class="product-name"> <a href="/bo-dao-zwilling-7-mon">Bộ dao zwilling 7 món</a> </h2>
													<span class="variant-title" style="display: none" >Default Title</span><br>
													<a class="button remove-item" title="Xóa" href="/cart/change?line=2&amp;quantity=0" data-id="5301597"><i class="fa fa-trash" aria-hidden="true"></i> <span>Xóa sản phẩm</span></a>
												</td>
												<td class="a-right hidden-xs text-center"><span class="cart-price"> <span class="price">3.250.000₫</span> </span></td>
												<td class="text-center tdQty">
													<div class="groupQty">
														<button type="button" class="qtyControl minus">-</button>
														<input type="number" maxlength="12" min="1" class="input-text qty" title="Số lượng" size="4" value="1" name="Lines" id="updates_5301597">
														<button type="button" class="qtyControl plus">+</button>
													</div>
												</td>
												<td class="text-center hidden-xs"><span class="cart-price"> <span class="price">3.250.000₫</span> </span></td>
											</tr>
											

										</tbody>
										<tfoot>
											<tr class="first last">
												<td class="a-right last" colspan="7"><button class="button btn-continue" title="Tiếp tục mua hàng" type="button" onclick="window.location.href='/collections/all'"><span><span>Tiếp tục mua hàng</span></span></button>
													<input type="submit" name="update" value="Cập nhật số lượng " class="btn-update button" />

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
												<td colspan="1" class="a-left"><strong>Tổng tiền</strong></td>
												<td class="a-right text-right"><strong><span class="price">4.350.000₫</span></strong></td>
											</tr>
										</tfoot>
									</table>
									<ul class="checkout">
										<li>
											<button class="button btn-proceed-checkout" title="Tiến hành thanh toán" type="button" onclick="window.location.href='/checkout'"><span>Tiến hành thanh toán</span></button>
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
<script>
	$(document).ready(function(){
		$('.groupQty .qtyControl').click(function(){
			var check = $(this).hasClass('minus'),
				val = parseInt($(this).parent().find('input').val());
			if(check){
				if(val > 1){
					$(this).parent().find('input').attr('value', val - 1)
				}
			}else{
				$(this).parent().find('input').attr('value', val + 1)
			}
		})
	})
</script>
</div>
@endsection
