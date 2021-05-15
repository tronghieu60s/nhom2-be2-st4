@extends('layouts.admin', ['title' => "Products"])

@section('content')
<main class="content">
    <div class="container-fluid p-0">
        <div class="row py-3 mb-3">
            <div class="col-6">
                <h1 class="h3 mb-3">Quản Lí Đơn Đặt Hàng</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
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
                                <td>{{$order->order_id}}</td>
                                <td>
                                    <ul>
                                        @foreach ($order_details as $order_detail)
                                        @if($order_detail['order_id']==$order->order_id)

                                        <li>{{$order_detail->product->product_name}}</li>

                                        @endif
                                        @endforeach
                                    </ul>
                                </td>
                                <td>
                                    {{$order->user->user_username}}
                                </td>
                                <td>
                                    {{($order->order_status === 0) ? 'Đang xử lý':'Đã giao hàng'}}
                                </td>
                                <td>{{$order->created_at}}</td>

                                <td class="table-action">
                                    <div class="d-flex">
                                        @if($order->order_status===0)
                                            <form action="{{ asset('/be-admin/orders/' . $order->order_id) }}" method="POST">
                                                @csrf
                                                {{ method_field('PUT') }}
                                                <button class="btn" type="submit"><i class="align-middle" data-feather="check"></i></button>
                                            </form>
                                            @endif
                                            <form action="{{ asset('/be-admin/orders/' . $order->order_id) }}" method="POST">
                                                @csrf
                                                {{ method_field('DELETE') }}
                                                <button class="btn" type="submit"><i class="align-middle" data-feather="trash"></i></button>
                                            </form>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>
</main>
@endsection