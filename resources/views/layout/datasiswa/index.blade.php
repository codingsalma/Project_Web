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
                <div class="card-header">
                    <div class=" d-flex justify-content-between">
                        <a href="datasiswa/create" class="btn btn-primary">Tambah data siswa</a>
                    </div>
                </div>
                <div class="card-body">
                    <table id="data-siswa-table" class="table table-bordered">
                        <thead>
                            <tr>
                                <th>NO</th>
                                <th>Nama Siswa</th>
                                <th>Kelas</th>
                                <th>Jenis Kelamin</th>
                                <th>Alamat</th>
                                <th>Status Active</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($siswa as $sis)
                            <tr>
                                <th scope="row">{{$loop->iteration}}</th>
                                <td>{{ $sis->nama_siswa }}</td>
                                <td>{{ $sis->kelas['nama_kelas']}} {{$sis->kelas['kompetensi_keahlian']}}</td>
                                <td>{{ $sis->jenis_kelamin}}</td>
                                <td>{{ $sis->alamat}}</td>
                                <td>{{ $sis->status_active}}</td>
                                <td>
                                    <a href="{{ route('datasiswa.show', $sis->id_siswa) }}" class="btn btn-primary">Lihat</a>
                                    <a href="datasiswa/delete/{{$sis->id_siswa}}" class="btn btn-danger">Hapus</a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
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

@push('addon-script')
<script>
    $(function () {
        $('#data-siswa-table').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": true,
            "ordering": true,
            "info": true,
            "autoWidth": false,
            "responsive": true,
        });
    });

</script>

@endpush