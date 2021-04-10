@extends('layouts.admin', ['title' => "Dashboard"])

@section('content')
    <main class="content">
        <div class="container-fluid p-0">
            <div class="row py-3 mb-3" style="background-color: #fff;">
                <div class="col-6 d-flex align-items-center">
                    <h1 class="h3 mb-0">Products</h1>
                </div>
                <div class="col-6 d-flex justify-content-end">
                    <form action="./admin" class="form-inline d-none d-sm-inline-block">
                        <div class="input-group input-group-navbar">
                            <input name="q" type="text" class="form-control" placeholder="Search…" aria-label="Search"
                                value="">
                            <div class="input-group-append">
                                <button class="btn" type="submit">
                                    <i class="align-middle" data-feather="search"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-12 my-2">
                    <a href="./admin/products/create">
                        <button type="button" class="btn btn-primary">
                            Thêm
                        </button>
                    </a>
                </div>
                <div class="col-12">
                    <div class="card">
                        <table class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th style="width:25%;"></th>
                                    <th style="width:15%;">Mã Hàng</th>
                                    <th style="width:25%">Tên Hàng</th>
                                    <th style="width:10%">Hãng</th>
                                    <th style="width:10%">Loại</th>
                                    <th style="width:25%">Giá</th>
                                    <th style="width:25%">Feature</th>
                                    <th style="width:25%">Thời Gian</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><img style="width: 100%;" src="" alt=""></td>
                                    <td>123</td>
                                    <td><a href="./products/details/">Example Post Formatting</a></td>
                                    <td>Manu Name</td>
                                    <td>Type Name</td>
                                    <td>12.000.000</td>
                                    <td>1</td>
                                    <td>Time</td>
                                    <td class="table-action">
                                        <a href=""><i class=" align-middle" data-feather="edit-2"></i></a>
                                        <a href=""><i class="align-middle" data-feather="trash"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-12 d-flex justify-content-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination pagination-sm">

                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </main>
@endsection
