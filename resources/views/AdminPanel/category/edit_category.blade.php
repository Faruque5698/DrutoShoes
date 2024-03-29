@extends('AdminPanel.Master')

@section('title')
    Update Category
@endsection

@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1><strong>Update Category</strong></h1>
                    </div>
                    @if(Session::get('message'))

                        <div class="alert alert-success alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <h5><i class="icon fas fa-check"></i> Successfully</h5>
                            {{Session::get('message')}}
                        </div>
                    @endif
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="card card-warning">
                <div class="card-header">
                    <h3 class="card-title">Update Category</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <form action="{{route('category_update')}}" enctype="multipart/form-data" method="post">
                        @csrf
                        <div class="form-row mb-2">
                            <div class="col-12">
                                <label>Category Title</label>
                                <input type="text" class="form-control @error('title') is-invalid @enderror" name="title" value="{{$category -> title ?? ''}}" placeholder="Category Title">
                                <input type="hidden" class="form-control @error('title') is-invalid @enderror" name="id" value="{{$category -> id ?? ''}}" placeholder="Category Title">
                                @error('title')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                           
                        </div>
                        <div class="form-row mb-2">
                            <div class="col-12">
                                <label>Description</label>
                                <textarea id="editor" class="form-control @error('description') is-invalid @enderror" name="summary" rows="5" cols="5"   placeholder="Category Summary">{{$category -> summary}}</textarea>
                                @error('summary')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                           
                        </div>
                        

                        <div class="form-row mb-2">
                           <div class="col-12">
                            <label>Image</label>
                            <input type="file" name="photo" id="imgInp" class="@error('photo') is-invalid @enderror" placeholder="">
                            @error('photo')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                            </div>
                        </div>
                        
                       <div class="form-row mb-2">
                            <div class="col-12">
                                <img src="{{asset($category -> photo)}}" alt="" id="blah" width="100px" height="100px">
                            </div>
                       </div>
                        

                        <div class="form-row mb-2">
                            <div class="col-12">
                                <select class="form-control @error('status') is-invalid @enderror" id="" name="status">
                                
                                    <option value="active" {{$category -> status == 'active' ? 'Selected' : ''}}>Active</option>
                                    <option value="inactive" {{$category -> status == 'inactive' ? 'Selected' : ''}}>Inactive</option>
    
                                </select>
                                @error('status')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>

                        </div>
                        


                       <div class="form-row mb-2">
                        <div class="col-2">
                            <input type="submit" class="form-control btn btn-primary" name="btn" id="btn" value="Update Category">
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
        imgInp.onchange = evt => {
            const [file] = imgInp.files
            if (file) {
                blah.src = URL.createObjectURL(file)
            }
        }
    </script>

@endsection
