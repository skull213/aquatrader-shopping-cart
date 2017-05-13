@extends('templates.main')


@section('content')			
	<h2>{{$type->name}}</h2>

	<?php $products = $type->products()->paginate(6);  
		$products->setPath("");
	?>
	@foreach($products as $product)
		<article class="group">
			<img src="{{asset('productphotos/'.$product->photo)}}" alt="">
			<h4>{{$product->name}}</h4>
			<p>{{$product->description}}</p>
			<span class="price"><i class="icon-dollar"></i> 4.00</span>
			<span class="addtocart">
				<a href="{{url('products/'.$product->id)}}">
					<i class="icon-plus"></i>
				</a>
			</span>
		</article>
	@endforeach

	{!! $products->render() !!} {{-- pagination links page 1, 2, 3,  --}}
			
@endsection		
