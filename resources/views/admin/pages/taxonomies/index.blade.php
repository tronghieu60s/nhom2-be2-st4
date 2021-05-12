@extends('layouts.admin', ['title' => "Products"])

@section('content')
    <main class="content">
        <div class="container-fluid p-0">

            <h1 class="h3 mb-3">Quản Lí Hãng Và Loại</h1>

            <div class="row">
                <div class="col-12 col-xl-6">
                    <div class="col-12 my-2">
                        <a href=""><button type="button" class="btn btn-primary">
                                Thêm
                            </button></a>
                    </div>
                    <div class="card">
                        <table class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th style="width:25%;">Mã Hãng</th>
                                    <th style="width:50%">Tên Hãng</th>
                                    <th>Hành Động</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>nha san xuat</td>
                                    <td class="table-action">
                                        <a href=""><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="">
                                            <i class="align-middle" data-feather="trash"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-12 col-xl-6">
                    <div class="col-12 my-2">
                        <a href="./admin/categories/prototype/create">
                            <button type="button" class="btn btn-primary">
                                Thêm
                            </button>
                        </a>
                    </div>
                    <div class="card">
                        <table class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th style="width:25%;">Mã Loại</th>
                                    <th style="width:50%">Tên Loại</th>
                                    <th>Hành Động</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>dasdsad</td>
                                    <td>type</td>
                                    <td class="table-action">
                                        <a href=""><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href=""><i class="align-middle" data-feather="trash"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection
