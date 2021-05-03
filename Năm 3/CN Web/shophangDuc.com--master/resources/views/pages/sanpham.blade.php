@extends('layout.index')
@section('content')
<section id="home_block_1" class="home_block">
	<div class="container">
		<h2>
			Danh mục sản phẩm
		</h2>
		<div class="row">
			<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
				<ul class="list-group">
					@foreach($theloai as $tl)
					<li class="list-group-item">{{$tl->name}}</li>
					@endforeach
					
				</ul>
			</div>
			<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
				<div class="row">
					@foreach($product as $sp)
					<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
						<div class="thumbnail">
							<img class="img-responsive" src="upload/product/{{$sp->image}}" alt="">
							<div class="caption">
								<h3>{{$sp->name}}</h3>
								<p>
									{{$sp->overview}}
								</p>
								<p>
									<a href="viewsanpham/{{$sp->id}}" class="btn btn-primary">Mua ngay</a>
									<a href="viewsanpham/{{$sp->id}}" class="btn btn-default">Chi tiết</a>
								</p>
							</div>
						</div>
					</div>
					@endforeach
					
				</div>
			</div>
		</div>
	</div>
</section>
@endsection