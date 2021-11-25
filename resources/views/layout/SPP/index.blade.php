@extends('layout.master')
@section('title', 'Data SPP')


@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Data SPP</h1>
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
                        <a href="#" class="btn btn-primary">Tambah data spp</a>
                    </div>
                </div>
                <div class="card-body">
                    <table id="data-siswa-table" class="table table-bordered">
                        <thead>
                            <tr>
                                <th>NO</th>
                                <th>Tagihan SPP</th>
                                <th>Nominal</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($spp as $sis)
                            <tr>
                                <th scope="row">{{$loop->iteration}}</th>
                                <td>{{ $sis->nama_spp}}</td>
                                <td>{{ $sis->nominal_tagihan}}</td>
                                <td>
                                    <a href="#" class="btn btn-primary">Lihat</a>
                                    <a href="#" class="btn btn-danger">Hapus</a>
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
