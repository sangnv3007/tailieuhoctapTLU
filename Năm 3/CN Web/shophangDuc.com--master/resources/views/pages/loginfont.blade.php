@extends('layout.index')
@section('content')
<!DOCTYPE html>
<section id="new-login">
	<div class="fv-login">
		<div class="container">
			<div class="box-login-two">
				<div class="row">
					<div class="col-sm-6 col-xs-12">
						<h1 class="title-box-login">
							Đăng nhập
						</h1>
						<div class="content-cus-form cus-login">
							<div id="login">
								<form accept-charset="UTF-8" action="loginfont" id="customer_login" method="post">
								<input name="FormType" type="hidden" value="customer_login">
								n <input name="utf8" type="hidden" value="true">
								
								<div class="col_full">
									<span class="not-null">*</span>
									<span class="icon_checkout ico-email"></span>
									<input required="" type="email" title="email" name="email" id="email" placeholder="Email của bạn" value="" class="form-control">
								</div>

								<div class="col_full">
									<span class="not-null">*</span>
									<span class="icon_checkout ico-pass"></span>
									<input required="" type="password" title="Mật khẩu" name="password" id="pass" placeholder="Nhập mật khẩu" value="" class="form-control">
								</div>

								<div class="col_full nobottommargin action">
									<br>
									<a class="dangnhap" href="http://localhost/shophangDuc.com-/public/trangchu">Đăng nhập</a>
									<a href="#" onclick="showRecoverPasswordForm();return false;" class="">Quên mật khẩu?</a>
								</div>
								<style>
								a.dangnhap {
								    border: 1px solid green;
								    background-color: #098E08;
								    color: white;
								}
								</style>
								<!--</form>-->
								</form>
							</div>
							<div id="recover-password" style="display:none;" class="userbox">
								<div class="acctitle"><i class="fa fa-refresh"></i>Quên mật khẩu</div>
								<div class="">
									<form accept-charset="UTF-8" action="/account/recover" id="recover_customer_password" method="post">
									<input name="FormType" type="hidden" value="recover_customer_password">
									<input name="utf8" type="hidden" value="true">     
									<div class="col_full">
										<span class="not-null">*</span>
										<span class="icon_checkout ico-email"></span>
										<input required="" type="text" title="email" name="email" placeholder="Nhập email của bạn" id="recover-email" value="" class="form-control">
									</div>
									<div class="col_full nobottommargin text-center">
										<button class="button button-3d button-black nomargin" type="submit">Gửi</button>
										<button class="button button-3d button-red nomargin cancel" onclick="hideRecoverPasswordForm(); return false;" name="">Hủy</button>
									</div>
									</form>
								</div>   
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-xs-12">
						<h1 class="title-box-login">
							Đăng ký thành viên mới
						</h1>
						<div class="content-cus-form cus-reg">
							<!-- Form start here -->
							<form accept-charset="UTF-8" action="formvalidate" id="customer_register" method="post">
							<input name="FormType" type="hidden" value="customer_register">
							<input name="utf8" type="hidden" value="true">   
							<div class="col_full">
								<span class="not-null">*</span>
								<span class="icon_checkout ico-name"></span>
								<input required="required" type="text" name="fullname" title="Họ và tên" class="input-text " placeholder="Họ và tên" id="firstname" size="30">
							</div>
							<div class="col_full">
								<span class="not-null">*</span>
								<span class="icon_checkout ico-name"></span>
								<input required="required" type="text" name="username" title="Tên người dùng" class="input-text " placeholder="Tên người d" id="firstname" size="30">
							</div>
							<div class="col_full">
								<span class="not-null">*</span>
								<span class="icon_checkout ico-email"></span>
								<input required="" type="email" value="" title="Email" name="email" id="email" placeholder="Email" class="text" size="30">
							</div>

							<div class="col_full">
								<span class="not-null">*</span>
								<span class="icon_checkout ico-pass"></span>
								<input required="" type="password" value="" name="password" id="pass_reg" placeholder="Mật khẩu" class="password text" size="30">
							</div>
							<div class="col_full nobottommargin action">
								<button class="button button-3d button-black nomargin" id="register-form-submit" name="register-form-submit" type="submit">Đăng ký</button>
							</div>
							</form>
							<!-- Form end here -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script>
    function confirm() {
        $.ajax({
            url: '{{''}}',
            type: 'submit',
            success: function (data) {
                    alert('Bạn đã đặt hành thành công');
                    reloadPage();
            }
        });
    }
    function reloadPage() {
        location.reload();
    }
</script>
@endsection