@extends('layout.index')
@section('content')
<div class="chir_main">
				<style>
	@media screen and (min-width: 992px){
		.article_item:nth-of-type(3n+1){
			clear: both;
		}
	}
	@media screen and (max-width: 991px){
		.article_item:nth-of-type(2n+1){
			clear: both;
		}
	}
</style>
<section id="chir_blogs">
	<style>
	.chir_breadcrumb ul li {
		display: inline-block;
		padding: 10px 0px;
	}
	.chir_breadcrumb ul li strong {
		font-family: 'brandon_textregular'!important;
	}
</style>
<div class="chir_breadcrumb  hidden-xs">
	<div class="container">
		<ul itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
			<li class="home"> <a itemprop="url" title="Quay lại trang chủ" href="/"><span itemprop="title">Trang chủ</span></a><span>—›</span></li>
			
			<li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><strong itemprop="title">Tin tức</strong></li>
			
		</ul>
	</div>
</div>
	
	<section class="latest_news_area">
		<div class="container">
			<div class="main">
				<div class="row">
					<div class="col-md-9 col-sm-8 col-xs-12">
						<div class="col-md-4 col-sm-6 col-xs-12 article_item">
							<div class="single_blog_post_box bg_w">
								<div class="blog_post_photo text-center">
									<a href="/vi-sao-do-dung-duc-co-tuoi-tho-den-ca-tram-nam" title="Vì sao đồ dùng Đức có tuổi thọ đến cả trăm năm?"><img src="img/b11.png" alt="Vì sao đồ dùng Đức có tuổi thọ đến cả trăm năm?"></a>
								</div>
								<div class="blog_post_txt">
									<div class="blog_post_heading">
										<h3><a href="/vi-sao-do-dung-duc-co-tuoi-tho-den-ca-tram-nam" title="Vì sao đồ dùng Đức có tuổi thọ đến cả trăm năm?">Vì sao đồ dùng Đức có tuổi thọ đến cả trăm năm?</a></h3>
										<p>Đăng bởi: Chị Hiền</p>
									</div>
									<div class="blog_post_content">
										<p> Tác giả viết: Đầu những năm 90 của thế kỷ 19, nước Đức đã...</p>
										<ul>
											<li><i class="fa fa-comments-o" aria-hidden="true"></i> 0 Bình luận</li>
											<li><i class="fa fa-calendar" aria-hidden="true"></i> </li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-6 col-xs-12 article_item">
							<div class="single_blog_post_box bg_w">
								<div class="blog_post_photo text-center">
									<a href="/tai-sao-hang-made-in-germany-lai-duoc-ca-the-gioi-ua-chuong" title="Tại sao hàng “made in Germany” lại được cả thế giới ưa chuộng"><img src="img/b22.jpg" alt="Tại sao hàng “made in Germany” lại được cả thế giới ưa chuộng"></a>
								</div>
								<div class="blog_post_txt">
									<div class="blog_post_heading">
										<h3><a href="/tai-sao-hang-made-in-germany-lai-duoc-ca-the-gioi-ua-chuong" title="Tại sao hàng “made in Germany” lại được cả thế giới ưa chuộng">Tại sao hàng “made in Germany” lại được cả thế giới ưa chuộng</a></h3>
										<p>Đăng bởi: Chị Hiền</p>
									</div>
									<div class="blog_post_content">
										<p>  Bạn có thể bàn luận với người Nhật Bản về giá thành sản...</p>
										<ul>
											<li><i class="fa fa-comments-o" aria-hidden="true"></i> 0 Bình luận</li>
											<li><i class="fa fa-calendar" aria-hidden="true"></i> </li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					
						<div class="col-md-4 col-sm-6 col-xs-12 article_item">
							<div class="single_blog_post_box bg_w">
								<div class="blog_post_photo text-center">
									<a href="/vi-sao-thay-vi-nhap-hang-gia-1-usd-tu-trung-quoc-nguoi-duc-van-quyet-tam-tu-lam" title="Vì sao thay vì nhập hàng giá 1 USD từ Trung Quốc, người Đức vẫn quyết tâm " tự="" làm"="" bông="" ráy="" tai="" với="" giá="" cao="" gấp="" 10="" lần?"=""><img src="img/b33.jpg" alt="Vì sao thay vì nhập hàng giá 1 USD từ Trung Quốc, người Đức vẫn quyết tâm " tự="" làm"="" bông="" ráy="" tai="" với="" giá="" cao="" gấp="" 10="" lần?"=""></a>
								</div>
								<div class="blog_post_txt">
									<div class="blog_post_heading">
										<h3><a href="/vi-sao-thay-vi-nhap-hang-gia-1-usd-tu-trung-quoc-nguoi-duc-van-quyet-tam-tu-lam" title="Vì sao thay vì nhập hàng giá 1 USD từ Trung Quốc, người Đức vẫn quyết tâm " tự="" làm"="" bông="" ráy="" tai="" với="" giá="" cao="" gấp="" 10="" lần?"="">Vì sao thay vì nhập hàng giá 1 USD từ Trung Quốc, người Đức vẫn...</a></h3>
										<p>Đăng bởi: Chị Hiền</p>
									</div>
									<div class="blog_post_content">
										<p>  Những người Đức hoàn hảo  
 Ít ai biết, từ năm 1992...</p>
										<ul>
											<li><i class="fa fa-comments-o" aria-hidden="true"></i> 0 Bình luận</li>
											<li><i class="fa fa-calendar" aria-hidden="true"></i> </li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						
						<div class="col-md-12 col-sm-12 col-xs-12 content_sortPagiBar pagi">
							<div id="pagination" class="clearfix">
	<ul class="pagination">

		
		<li class="pagination_previous disabled">
			<span><i class="fa fa-chevron-left"></i></span>
		</li>
		
		<li class="active"><span>1</span></li>
		<li class="pagination_next disabled"><span><i class="fa fa-chevron-right"></i></span></li>
	
</div>
						</div>
						
					</div>
					<div class="col-md-3 col-sm-4 hidden-xs ba_sidebar">
						<aside>
	<div class="right_sidebar">
		<div class="all_right_widgets">
			<div class="sing_right_widget">
				<h2>Bài viết khác</h2>
				<div class="sing_right_widg_content">
					<ul class="lat_news_right">
						<li>
							<img src="img/b1.png" alt="Vì sao đồ dùng Đức có tuổi thọ đến cả trăm năm?">
							<div class="lat_news_right_con">
								<h3><a href="/vi-sao-do-dung-duc-co-tuoi-tho-den-ca-tram-nam" title="Vì sao đồ dùng Đức có tuổi thọ đến cả trăm năm?">Vì sao đồ dùng...</a></h3>
								<h4>26/02/2017</h4>
							</div>
						</li>				
						<li>
							<img src="img/b2.jpg" alt="Tại sao hàng “made in Germany” lại được cả thế giới ưa chuộng">
							<div class="lat_news_right_con">
								<h3><a href="/tai-sao-hang-made-in-germany-lai-duoc-ca-the-gioi-ua-chuong" title="Tại sao hàng “made in Germany” lại được cả thế giới ưa chuộng">Tại sao hàng “made...</a></h3>
								<h4>30/02/2018</h4>
							</div>
						</li>	
						<li>
							<img src="img/b3.jpg" alt="Vì sao thay vì nhập hàng giá 1 USD từ Trung Quốc, người Đức vẫn quyết tâm " tự="" làm"="" bông="" ráy="" tai="" với="" giá="" cao="" gấp="" 10="" lần?"="">
							<div class="lat_news_right_con">
								<h3><a href="/vi-sao-thay-vi-nhap-hang-gia-1-usd-tu-trung-quoc-nguoi-duc-van-quyet-tam-tu-lam" title="Vì sao thay vì nhập hàng giá 1 USD từ Trung Quốc, người Đức vẫn quyết tâm " tự="" làm"="" bông="" ráy="" tai="" với="" giá="" cao="" gấp="" 10="" lần?"="">Vì sao thay vì...</a></h3>
								<h4>20/03/2018</h4>
							</div>
						</li>
						
						
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
	</section>
</section>

			</div>
@endsection