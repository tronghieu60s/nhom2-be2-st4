@extends('layouts.admin', ['title' => "Edit Products"])

@section('content')
    <main class="content">
        <div class="container-fluid p-0">
            <h1 class="h3 mb-3">Edit Products</h1>
            <div class="row">
                <div class="col-12 col-6">
                    <div class="card px-5">
                        <div class="card-body">
                            <form method="POST" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label class="form-label">Tên</label>
                                    <input name="name" type="text" class="form-control" placeholder="Nhập tên..." required>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Hãng Sản Xuất</label>
                                    <select class="form-control" name="manu_id" id="">
                                        <option value="">Manu Name</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Loại Hàng</label>
                                    <select class="form-control" name="type_id" id="">
                                        <option value="">Type Name</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Mô Tả</label>
                                    <textarea name="description" class="form-control" placeholder="Nhập mô tả ở đây..."
                                        rows="3"></textarea>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Giá</label>
                                    <input name="price" type="number" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Feature</label>
                                    <select class="form-control" name="feature" id="">
                                        <option value="1">On</option>
                                        <option value="0" selected>Off</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="form-label w-100">Hình ảnh</label>
                                    <input type="file" name="fileToUpload" accept="image/*" required>
                                    <img width="120" src="" alt="">
                                    <small class="form-text text-muted">Chọn hình ảnh cho sản phẩm của bạn.</small>
                                </div>
                                <button type="submit" class="btn btn-primary">Cập Nhật</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection
