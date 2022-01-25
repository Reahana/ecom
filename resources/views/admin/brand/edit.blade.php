@extends('admin.master')

@section('title')
   Edit Brand
@endsection

@section('body')
    <div class="row">
        <div class="col-md-12">
            <div class="ibox">
                <div class="ibox-head">
                    <div class="ibox-title">Edit Brand Form</div>
                    <div class="ibox-tools">
                        <a class="ibox-collapse"><i class="fa fa-minus"></i></a>
                        <a class="fullscreen-link"><i class="fa fa-expand"></i></a>
                    </div>
                </div>
                <div class="ibox-body">
                    @if($message = Session::get('message'))
                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                            <strong>{{$message}}!</strong>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    @endif
                    <form class="form-horizontal" action="{{route('brand.update', ['id' => $brand->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Brand Name</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="text" value="{{$brand->name}}" name="name" placeholder="Brand Name"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Brand Description</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" name="description" placeholder="Brand Description">{{$brand->description}}</textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Brand Image</label>
                            <div class="col-sm-10">
                                <input class="form-control-file" type="file" name="image" accept="image/*"/>
                                <img src="{{asset($brand->image)}}" alt="" height="50" width="80"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Publication Status</label>
                            <div class="col-sm-10">
                                <label><input type="radio" name="status" {{$brand->status == 1 ? 'checked' : '' }} value="1"/> Published</label>
                                <label><input type="radio" name="status" {{$brand->status == 0 ? 'checked' : '' }} value="0"/> UnPublished</label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-10 ml-sm-auto">
                                <button class="btn btn-info btn-block" type="submit">Edit Brand</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection