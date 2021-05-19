@extends('layouts.client', ['title' => $product->product_name ])

@section('content')
    @include('client.products.details.index')
    @include('client.products.details.description')
    <style>
        .icon-select {
            cursor: pointer;
        }

    </style>
    <div class="container">
        <div class="row">
            <div class="col-md-7" style="margin-bottom: 4em">
                @if (count($comments) == 0)
                    <h2 class="text-center" style="font-size: 1.5em">
                        Chưa có đánh giá nào cho sản phẩm này.
                    </h2>
                @endif
                @foreach ($comments as $comment)
                    <div class="testimonial" style="margin-bottom: 30px">
                        <div class="testimonial__thumb" style="width: 20px">
                            <img src="{{ asset('assets/profile.png') }}" alt="testimonial images">
                        </div>
                        <div class="testimonial__details">
                            <p>{{ $comment->created_at }}</p>
                            @include('client.products.details.rating', ['rating' => $comment->comment_rating ])
                            <h4><a href="#">{{ $comment->user->user_username }}</a></h4>
                            <p>{{ $comment->comment_content }}</p>
                        </div>
                    </div>
                @endforeach
            </div>
            <div class="col-md-5">
                @if (!session('.config_user'))
                    <div style="display: flex; flex-direction: column; align-items: center">
                        <h2 class="text-center" style="font-size: 1.5em">
                            Vui lòng đăng nhập để bình luận, đánh giá sản phẩm.
                        </h2>
                        <div style="margin-top: 10px">
                            <a class="btn btn-primary" href="{{ asset('/sign-in') }}" role="button">
                                Đăng Nhập
                            </a>
                        </div>
                    </div>
                @elseif (count($product->orders) === 0)
                    <div style="display: flex; flex-direction: column; align-items: center">
                        <h2 class="text-center" style="font-size: 1.5em">
                            Bạn phải mua sản phẩm để được bình luận, đánh giá.
                        </h2>
                    </div>
                @else
                    <form action="{{ asset('be-admin/comments') }}" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="" style="font-size: 18px">Đánh Giá</label>
                            <ul class="rating">
                                <li class="icon-select"><i class="icon-star icons"></i></li>
                                <li class="icon-select"><i class="icon-star icons"></i></li>
                                <li class="icon-select"><i class="icon-star icons"></i></li>
                                <li class="icon-select"><i class="icon-star icons"></i></li>
                                <li class="icon-select"><i class="icon-star icons"></i></li>
                                <input name="rating" id="ratingInput" type="text" value="5" style="display: none">
                            </ul>
                            <input name="product" type="text" value="{{ $product->product_id }}" style="display: none">
                            <textarea name="content" class="form-control" rows="3"
                                placeholder="Nhập chi tiết đánh giá của bạn về sản phẩm..." required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Gửi đánh giá</button>
                    </form>
                @endif
            </div>
        </div>
    </div>

    <section class="htc__category__area ptb--100">
        <div class="container">
            @include('client.home.titlecategory',[ 'title' => 'Sản Phẩm Liên Quan', 'slogan' => 'Bạn muốn tìm những thứ phù
            hợp hơn? Lựa chọn ngay.'])
            <div class="htc__product__container">
                <div class="row">
                    <div class="product__list clearfix mt--30">
                        @foreach ($productsRelated as $product)
                            @include('client.products.item', ['product' => $product])
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script>
        const iconSelect = document.querySelectorAll(".icon-select");
        const ratingInput = document.getElementById("ratingInput");
        for (let index = 0; index < iconSelect.length; index++) {
            iconSelect[index].addEventListener("click", () => {
                for (let jIndex = 0; jIndex <= index; jIndex++)
                    iconSelect[jIndex].classList.remove("old");
                for (let jIndex = index + 1; jIndex < iconSelect.length; jIndex++)
                    iconSelect[jIndex].classList.add("old");
                ratingInput.setAttribute("value", index + 1);
            })
        }

    </script>
@endsection
