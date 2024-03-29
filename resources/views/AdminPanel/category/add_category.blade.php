@extends('AdminPanel.Master')

@section('title')
    Add Category
@endsection

@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1><strong>Add Category</strong></h1>
                    </div>
                    @if(Session::get('message'))

                        <div class="alert alert-success alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <h5><i class="icon fas fa-check"></i> Successfully</h5>
                            {{ Session::get('message')}}
                        </div>
                    @endif
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="card card-warning">
                <div class="card-header">
                    <h3 class="card-title">Add Category</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <form action="{{route('category_store')}}" enctype="multipart/form-data" method="post">
                        @csrf
                        <div class="form-row">
                            <div class="col-12 mb-2">
                                <label>Category Title</label>
                                <input type="text" class="form-control @error('title') is-invalid @enderror" name="title"  placeholder="Category Title">
                                @error('title')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                           
                        </div>
                        
                        <div class="form-row mb-2">
                            <div class="col-12">
                                <label>Description</label>
                                <textarea id="editor" class="form-control @error('description') is-invalid @enderror" name="summary" rows="5" cols="5"   placeholder="Category Summary"></textarea>
                                @error('summary')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                           
                        </div>

                        <div class="form-row mb-2">
                            <div class="col-12">
                                <label>Image</label>
                                <input type="file" name="photo" id="cat_image" class="form-control @error('photo') is-invalid @enderror" placeholder="">
                                @error('photo')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            
                        </div>
                       

                       <div class="form-row">
                            <div class="col-12">
                                <img src="{{asset('assets/images/noimage.jpeg')}}" alt="" id="cat_image_preview" width="100px" height="100px" class="mt-2">
                            </div>
                       </div>
                       

                        <div class="form-row mb-2">
                            <div class="col-12">
                                <label>Status</label>
                                <select class="form-control @error('status') is-invalid @enderror" id="" name="status">
                                   
                                    <option value="active">Active</option>
                                    <option value="inactive">Inactive</option>

                                </select>
                                @error('status')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>

                        </div>
                       


                        <div class="form-row mb-2">
                            <div class="col-2">
                                <input type="submit" class="form-control btn btn-primary" name="btn" id="btn" value="Add Category">
                            </div>
                        </div>
                    </form>
                </div>
                <!-- /.card-body -->
            </div>
        </section>
    </div>
@endsection

@section('js')

    <script>
        cat_image.onchange = evt => {
            const [file] = cat_image.files
            if (file) {
                cat_image_preview.src = URL.createObjectURL(file)
            }
        }
    </script>

@endsection
