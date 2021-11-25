@extends('layout.master')
@section('title', 'Data Siswa')


@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Data Siswa</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Blank Page</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="card">

                <!-- <form action="{{route('datasiswa.store')}}" method="post">
                    @csrf -->
                <div class="card-header">
                    <div class=" d-flex justify-content-between">
                        <a href="{{ route('datasiswa.edit', $data->id_siswa) }}" class="btn btn-primary">Edit data siswa</a>
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="nama">NIS</label>
                        <input type="text" class="form-control" name="nis" value="{{$data->nis}}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="nama">Nama Siswa</label>
                        <input type="text" class="form-control" name="nama" value="{{$data->nama_siswa}}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="nama">Alamat</label>
                        <input type="text" class="form-control" name="alamat" value="{{$data->alamat}}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="nama">Jenis Kelamin</label>
                        <input type="text" class="form-control" name="jenis_kelamin"
                            value="{{$data->jenis_kelamin}}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="nama">Kelas</label>
                        <input type="text" class="form-control" name="kelas"
                            value="{{$data->kelas['nama_kelas'] }} {{$data->kelas['kompetensi_keahlian']}}" readonly>
                    </div>
                </div>
                <!-- <div class="card-footer">
                        <button type="submit" class="btn btn-primary">Simpan Data</button>
                    </div> -->
                <!-- </form> -->

            </div>
        </div>
    </section>
    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
</div>
@endsection
