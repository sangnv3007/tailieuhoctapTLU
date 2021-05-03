@extends('layout.index')
@section('content')
<div id="mango-pages">
	<div class="content-push">
		<div class="breadcrumb-box">
			<div class="container">
				<div class="row">
					<style>
						.chir_breadcrumb ul li {
						display: inline-block;
						padding: 10px 0px;
						}
						.chir_breadcrumb ul li strong {
						font-family: 'brandon_textregular'!important;
						}
					</style>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-9 col-sm-12 col-xs-12 information-entry">
					<div class="insCtMain">
						<div class="information-blocks main_contact bg_w">
							<div class="heading-article">
								<h1 class="title">Liên hệ</h1>
							</div>
							<div class="content-page">
								<div class="content-contact content-page">
									
									<p class="text-center">
										<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.1377819260088!2d105.78259061450392!3d20.987113386020912!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135accb063a6035%3A0xeaa2bbb6e1b7b67b!2sMulberry+Lane!5e0!3m2!1svi!2s!4v1501733422129" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen=""></iframe>
									</p>
									
									<div class="row">
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
										<div class="col-md-5" id="col-right">
											<h3>Chúng tôi ở đây</h3>
											<hr class="line-right">
											<h3 class="name-company">Shop Hàng Đức Online</h3>
											<p>	Shop Hàng Đức - Cung cấp đồ gia dụng, thiết bị vệ sinh, mỹ phẩm - trang điểm, thuốc - thực phẩm chức năng, thực phẩm.. </p>
											<ul class="info-address">
												<li>
													<i class="glyphicon glyphicon-map-marker"></i>
													<span>Căn C1902 Mulberry Land - Mỗ Lao- Hà Đông- Hà Nội</span>
												</li>
												<li>
													<i class="glyphicon glyphicon-map-marker"></i>
													<span>149 Bế Văn Đàn, P. Quang Trung, Quận Hà Đông, TP Hà Nội</span>
												</li>
												<li>
													<i class="glyphicon glyphicon-envelope"></i>
													<span><a href="mailto:hienbt1509@gmail.com">hienbt1509@gmail.com</a></span>
												</li>

												<li>
													<i class="glyphicon glyphicon-phone-alt"></i> 
													<span><a href="tel:0904990000">0904990000</a></span>
												</li>
												<li>
													<i class="fa fa-chrome" aria-hidden="true"></i>
													<span>shophangduc.com.vn
</span>
												</li>

											</ul>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-3 hidden-sm hidden-xs ba_sidebar">
					<aside>
						<div class="right_sidebar">
							<div class="all_right_widgets">

								<div class="sing_right_widget">
									<h2>Danh mục sản phẩm</h2>
									<div class="sing_right_widg_content">
										<ul class="category_right">
											
											<li class=""><a href="/do-gia-dung"><i class="fa fa-angle-right"></i>Đồ gia dụng</a></li>
											
											<li class=""><a href="/thiet-bi-nha-bep"><i class="fa fa-angle-right"></i>Thiết bị nhà bếp</a></li>
											
											<li class=""><a href="/thiet-bi-dien"><i class="fa fa-angle-right"></i>Thiết bị điện</a></li>
																						
										</ul>
									</div>
								</div>

							</div>
						</div>
					</aside>
				</div>
				
			</div>
		</div>
	</div>
</div>
@endsection