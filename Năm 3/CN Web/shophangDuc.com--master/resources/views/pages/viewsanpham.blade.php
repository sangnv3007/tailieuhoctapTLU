@extends('layout.index')
@section('content')
	<div class="box_collection">
		<div class="container">
			<div class="information-blocks bg_w">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 information-entry">
						<div class="product-preview-box relative"> 
							<div class="swiper-feature text-center">
								<img class="product-image-feature" src="upload/product/{{$viewsanpham->image}}" alt="Máy xay silvercrest" >
							</div>
							<div id="thumb_img" class="">
								<ul class="slide_thumb_img owl_design owl-carousel owl-theme owl-responsive-1200 owl-loaded">
	
								<div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 107px;"><div class="owl-item active" style="width: 107px; margin-right: 0px;"><li class="product-thumb active">
										<a href="javascript:">
											<img alt="" data-change="upload/product/{{$viewsanpham->image}}" data-image="upload/product/{{$viewsanpham->image}}" src="upload/product/{{$viewsanpham->image}}">
										</a>
									</li></div></div></div><div class="owl-controls"><div class="owl-nav"><div class="owl-prev" style="">‹</div><div class="owl-next" style="">›</div></div><div class="owl-dots" style=""><div class="owl-dot active"><span></span></div></div></div></ul>
							</div>
							
						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 information-entry">
						<div class="product-detail-box">
							<h3 class="product-subtitle"></h3>
							<h1 class="product-title">{{$viewsanpham->name}}</h1>
							<span class="sku"><strong>Mã sản phẩm:</strong> Chưa rõ</span>
							<br>
							<span class="sku"><strong>Hàng:</strong> Hàng có sẵn</span>
							
							<div class="product-description detail-info-entry">
								
							</div>
							<div class="row">
								<div class="col-sm-5 col-xs-5 left_box">
									<div class="price detail-info-entry">
										
										
										<div class="current">{{$viewsanpham->price}}₫</div>
										
										
									</div>
									<div class="quantity-selector detail-info-entry">
										<div class="detail-info-entry-title">Số lượng</div>
										<div class="entry number-minus">&nbsp;</div>
										<div class="entry number">1</div>
										<div class="entry number-plus">&nbsp;</div>
									</div>
									<div class="select clearfix">
										
										 
										
										<input type="hidden" name="variantId" value="16494120" id="one_variant">
										
										
									</div>
									<div class="select-swatch">							
										
									</div>
								</div>
								
								<div class="col-sm-7 col-xs-7 right_box text-left">
									<div class="pd_policy">
										<h3>Dịch vụ của chúng tôi</h3>
										<p class="serv-1">Giao hàng toàn quốc</p>
										<p class="serv-2">Order  theo yêu cầu</p>
									</div>
								</div>
								
							</div>

							<div class="clearfix"></div>
							<div class="detail-info-entry pd_action">
								<a href="muahang/{{$viewsanpham->id}}/{{$viewsanpham->name}}" class="button btn-outline btn-addCart ">Thêm vào giỏ</a>
								<a href="muahang/{{$viewsanpham->id}}/{{$viewsanpham->name}}" class="button btn-outline btn-buyNow ">Mua ngay</a>
								<div class="clear"></div>
							</div>

							<div class="hotline-product">
								<a style="max-width: 360px;    width: 100%;" href="tel:Hotline: 0904990000" class="button btn-outline">Hotline: 0904990000</a>

							</div>
							
						</div>
					</div>
				</div>
			</div>

			<div class="information-blocks">
				<div class="tabs-container style-1">
					<div class="swiper-tabs description">
						<div class="title_chir">
							<h2>
								Chi tiết sản phẩm
							</h2>
						</div>
						<div class="content-text bg_w">
							
							<p>
								</p><ul style="margin:0px; padding-right:0px; padding-left:1.25rem; color:#2f3a44; font-family:Lidl-Font, 'Trebuchet MS', Arial, sans-serif; font-size:18px; -webkit-text-size-adjust:100%">
<li style="padding-bottom:0.625rem">Cối thuỷ tinh chắc chắn</li>
<li style="padding-bottom:0.625rem"><font style="vertical-align:inherit">5 mức tốc độ mạnh mẽ</font></li>
<li style="padding-bottom:0.625rem"><font style="vertical-align:inherit">Dao bằng thép không gỉ </font></li>
<li style="padding-bottom:0.625rem"><font style="vertical-align:inherit">Bao gồm hướng dẫn vận hành với 10 gợi ý về công thức</font></li>
<li style="padding-bottom:0.625rem"><font style="vertical-align:inherit">Các bộ phận có thể tháo rời máy rửa chén an toàn</font></li>
<li style="padding-bottom:0.625rem"><font style="vertical-align:inherit">Nắp với nắp mở và nắp đậy</font></li>
<li style="padding-bottom:0.625rem"><font style="vertical-align:inherit">Cáp cuộn và chân hút</font></li>
<li style="padding-bottom:0.625rem">Xay thức ăn, hoa quả và cả đá</li>
<li style="padding-bottom:0.625rem">Công suất: 550watt</li>
<li style="padding-bottom:0.625rem">Cối thể tích 750ml</li></ul>
						
</div>
</div>
</div>

</div>
<div class="col-md-7 col-left " id="contactFormWrapper">
											<h3>Viết nhận xét</h3>
											<hr class="line-left">
											<p>
												Nếu bạn có thắc mắc gì, có thể gửi yêu cầu cho chúng tôi, và chúng tôi sẽ liên lạc lại với bạn sớm nhất có thể .
											</p>
											<form accept-charset="UTF-8" action="/contact" id="contact" method="post">
<input name="FormType" type="hidden" value="contact">
<input name="utf8" type="hidden" value="true">
											
											

											<div class="form-group">
												<label for="contactFormName" class="sr-only">Tên</label>
												<input required="" type="text" id="contactFormName" class="form-control input-lg" name="contact[name]" placeholder="Tên của bạn" autocapitalize="words" value="">
											</div>
											<div class="form-group">
												<label for="contactFormEmail" class="sr-only">Email</label>
												<input required="" type="email" name="contact[email]" placeholder="Email của bạn" id="contactFormEmail" class="form-control input-lg" autocorrect="off" autocapitalize="off" value="">
											</div>
											<div class="form-group">
												<label for="contactFormMessage" class="sr-only">Nội dung</label>
												<textarea required="" rows="6" name="contact[body]" class="form-control" placeholder="Viết bình luận" id="contactFormMessage"></textarea>
											</div>

											<button type="submit" class="btn btn-primary btn-lg btn-outline">Gửi liên hệ</button>

											</form>

										</div>
										</div>
@endsection