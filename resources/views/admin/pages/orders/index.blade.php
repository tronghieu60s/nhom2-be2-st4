@extends('layouts.admin', ['title' => "Products"])

@section('content')
    <main class="content">
        <div class="container-fluid p-0">
            <div class="row py-3 mb-3">
                <div class="col-6">
                    <h1 class="h3 mb-3">Đơn Đặt Hàng</h1>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div style="margin-bottom: 20px">
                        <a href="{{ request()->fullUrlWithQuery(['status' => null]) }}">
                            <button type="button" class="btn btn-primary">
                                Tất Cả</button></a>
                        <a href="{{ request()->fullUrlWithQuery(['status' => 1]) }}">
                            <button type="button" class="btn btn-primary">Sản Phẩm Đã Giao</button></a>
                        <a href="{{ request()->fullUrlWithQuery(['status' => 0]) }}">
                            <button type="button" class="btn btn-primary">Sản Phẩm Đang Xử Lý</button></a>
                    </div>
                    <div class="card">
                        <table class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th style="width:10%;">Mã Đơn</th>
                                    <th style="width:30%;">Các Sản Phẩm</th>
                                    <th style="width:20%;">Người Mua</th>
                                    <th style="width:20%">Trạng thái đơn hàng</th>
                                    <th style="width:15%">Thời Gian</th>
                                    <th>Hành Động</th>
                                </tr>
                            </thead>
                            @foreach ($orders as $order)
                                <tbody>
                                    <tr>
                                        <td>{{ $order->order_id }}</td>
                                        <td>
                                            <ul>
                                                @foreach ($order_details as $order_detail)
                                                    @if ($order_detail['order_id'] == $order->order_id)
                                                        <li>{{ $order_detail->product->product_name }}</li>
                                                    @endif
                                                @endforeach
                                            </ul>
                                        </td>
                                        <td>
                                            {{ $order->user->user_username }}
                                        </td>
                                        <td>
                                            {{ $order->order_status === 0 ? 'Đang xử lý' : 'Đã giao hàng' }}
                                        </td>
                                        <td>{{ $order->created_at }}</td>

                                        <td class="table-action">
                                            <div class="d-flex">
                                                @if ($order->order_status === 0)
                                                    <form action="{{ asset('/be-admin/orders/' . $order->order_id) }}"
                                                        method="POST">
                                                        @csrf
                                                        {{ method_field('PUT') }}
                                                        <button class="btn" type="submit"><i class="align-middle"
                                                                data-feather="check"></i></button>
                                                    </form>
                                                @endif
                                                <form action="{{ asset('/be-admin/orders/' . $order->order_id) }}"
                                                    method="POST">
                                                    @csrf
                                                    {{ method_field('DELETE') }}
                                                    <button class="btn" type="submit"><i class="align-middle"
                                                            data-feather="trash"></i></button>
                                                </form>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            @endforeach
                        </table>
                    </div>
                </div>
                {{-- <div class="col-12 d-flex justify-content-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-end">
                            @php
                                $page = request()->query('page');
                                if (!$page) {
                                    $page = 1;
                                }
                            @endphp
                            @for ($i = 0; $i < $countAllProduct / $perPage; $i++)
                                <li class="page-item {{ $page == $i + 1 ? 'active' : '' }}">
                                    <a class="page-link" href="{{ request()->fullUrlWithQuery(['page' => $i + 1]) }}">
                                        {{ $i + 1 }}
                                    </a>
                                </li>
                            @endfor
                        </ul>
                    </nav>
                </div> --}}
            </div>
        </div>
    </main>
@endsection
