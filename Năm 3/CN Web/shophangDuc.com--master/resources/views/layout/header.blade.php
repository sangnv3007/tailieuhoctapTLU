
<header id="header_chir" class="bg_w">
	<section id="chir_top_bar" class="hidden-xs hidden-sm">
		<div class="main">
			<div class="container">
				<ul>
					<li><i class="fa fa-map-marker" aria-hidden="true"></i> <span>Căn C1902 Mulberry Land - Mỗ Lao - Hà Đông - Hà Nội</span></li>
					<li><a href="mailto:hienbt1509@gmail.com"><i class="fa fa-envelope" aria-hidden="true"></i> hienbt1509@gmail.com</a></li>
					<li><a href="tel:0904990000"><i class="fa fa-mobile" aria-hidden="true"></i> 0904990000</a></li>
				</ul>
			</div>
		</div>
	</section>
	<section id="main_header">
		<div class="container">
			<div class="row">
				<div id="chir_logo" class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="tool_bar_menu visible-xs visible-sm">
						<a href="javascript:void(0)">
							<span class="open-menu"></span>
						</a>
					</div>
				<div class="tool_bar_user visible-xs visible-sm">
					<a href="gio-hang" title="Giỏ hàng" class="cart_mobile">
						<span class="cart-control control-4">
						</span>
						<span id="count_Cart_mobile" class="header-cart-count CartCount">
						</span>
					</a>
					<div class="site_user_xs relative">
						<span class="open-user">
							<div class="div-user-control control-2">
							</div>
						</span>
						<div class="box_user_xs">
							<ul class="dropdown-menu info-user user-xs" aria-labelledby="dLabel">

								<li class="info"><a href="loginfont" class="login"><i class="fa fa-sign-in" aria-hidden="true"></i> Đăng nhập</a></li>
								<li class="info"><a href="loginfont"><i class="fa fa-registered" aria-hidden="true"></i> Đăng ký</a></li>

							</ul>
						</div>
					</div>
				</div>
					<p>
						<a href="/"><img src="img/logo.png"></a>
					</p>
					<h1 class="hide">
						Shop Hàng Đức
					</h1>
				</div>
				<div id="chir_search_head" class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
					<div class="chir_frm">
						<form id="timkiem" action="timkiem" method="post" role="search">
							<input type="hidden" name="_token" value="{{csrf_token()}}";>
							<input type="hidden" name="type" value="product">
							<input required="" type="text" name="timkiem" placeholder="Tìm kiếm...">
							<button type="submit" class="chir_btn_sub" name="timkiem">
								Tìm kiếm
							</button>
						</form>
					</div>
					<ul class="chir_autocomplete">
						<li class="title"><strong>Gợi ý từ khóa: </strong></li>
						<li><span>Nồi, sanh, ấm</span></li>
					</ul>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs fr scroll-down2">
					<div class="control-box">
						<ul class="ul-control-box">

							<li class="top-cart-block">
								<a href="gio-hang" class="open-cart-popup" title="Giỏ hàng">
									<span class="div-user-control control-4" id="cartItemsCount">
									</span>
									<span class="info"> <a href="gio-hang">Giỏ hàng</a></span>
									<span id="count_Cart" class="header-cart-count CartCount"></span>
								</a>
							</li>
							<li class="dropdown" id="segment_user_do_login">
								<a class="info" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
									<div class="div-user-control control-2">
									</div>
									<span> Tài khoản </span>
								</a>
								<ul class="dropdown-menu info-user" aria-labelledby="dLabel">
									<li class="info"><a href="loginfont" class="login"><i class="fa fa-sign-in" aria-hidden="true"></i> Đăng nhập</a></li>
									<li class="info"><a href="loginfont"><i class="fa fa-registered" aria-hidden="true"></i> Đăng ký</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
</header>
<nav id="chir_main_menu" class="hidden-sm hidden-xs">
	<div class="main">
		<div class="container">
		@include('layout.menu');
		</div>
	</div>
</nav>