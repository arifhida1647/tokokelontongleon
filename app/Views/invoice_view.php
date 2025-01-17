<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Toko sembako Leon | Data Kategori</title>
</head>

<body class="hold-transition sidebar-mini">
    <div class="wrapper">

        <?php echo view('sidebar'); ?>

        <!-- CONTAINER -->

        <div class="content-wrapper">
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1>Invoice</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Invoice</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </section>
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="invoice p-3 mb-3">
                                <div class="row">
                                    <div class="col-12">
                                        <h4>
                                            <i class="fas fa-shop"></i> Toko Sembako Leon
                                            <small class="float-right"><?= $data[0]['tanggal'] ?></small>
                                        </h4>
                                    </div>

                                </div>

                                <div class="row invoice-info">
                                    <div class="col-sm-4 invoice-col">
                                        From
                                        <address>
                                            <strong>Toko Sembako Leon</strong><br>
                                            Bogor,Cileungsi,Griya Alam Sentosa Blok R 10 No 12 D<br>
                                            Phone: (0896) 11350447<br>
                                        </address>
                                    </div>

                                    <div class="col-sm-4 invoice-col">
                                        To
                                        <address>
                                            <strong><?= $transaksi[0]['nama_pelanggan'] ?></strong><br>
                                            <?= $transaksi[0]['alamat_pelanggan'] ?><br>
                                            Phone: <?= $transaksi[0]['telp_pelanggan'] ?><br>
                                        </address>
                                    </div>

                                    <div class="col-sm-4 invoice-col">
                                        <b>Invoice #<?= $data[0]['id'] ?></b><br>
                                        <br>
                                        <b>Order ID:</b> 4F3S8J<br>
                                        <b>Payment Due:</b> <?= $data[0]['tanggal'] ?><br>
                                        <b>Account:</b> 968-34567
                                    </div>

                                </div>


                                <div class="row">
                                    <div class="col-12 table-responsive">
                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Jumlah</th>
                                                    <th>Product</th>
                                                    <th>Diskon</th>
                                                    <th>Subtotal</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                $nomor = 0;
                                                foreach ($transaksi as $k => $v) {
                                                    ?>
                                                    <tr>
                                                        <th><?= $v['jumlah_item'] ?></th>
                                                        <th><?= $v['nama_item'] ?></th>
                                                        <th><?= $v['diskon_item'] ?></th>
                                                        <th>Rp <?= $v['subtotal'] ?></th>
                                                    </tr>
                                                <?php } ?>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-6">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <tr>
                                                    <th style="width:50%">Total:</th>
                                                    <td>Rp <?= $data[0]['total_harga'] ?></td>
                                                </tr>
                                                <tr>
                                                    <th>Tunai:</th>
                                                    <td>Rp <?= $data[0]['tunai'] ?></td>
                                                </tr>
                                                <tr>
                                                    <th>Kembalian:</th>
                                                    <td>Rp <?= $data[0]['kembalian'] ?></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </section>

        </div>

        <script>
            $(function () {
                $("#example1").DataTable({
                    "responsive": true, "lengthChange": false, "autoWidth": false,
                    "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
                }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
                $('#example2').DataTable({
                    "paging": true,
                    "lengthChange": false,
                    "searching": false,
                    "ordering": true,
                    "info": true,
                    "autoWidth": false,
                    "responsive": true,
                });
            });
        </script>
        <script>
            window.onload = function () {
                window.print();
            };
        </script>

</body>

</html>