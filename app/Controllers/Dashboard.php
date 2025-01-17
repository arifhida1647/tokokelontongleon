<?php

namespace App\Controllers;

use App\Models\ModelKeranjang;
use App\Models\ModelPelanggan;
use App\Models\ModelInvoice;
use App\Models\ModelItem;

class Dashboard extends BaseController
{
    protected $model;
    protected $modelKeranjang;
    protected $modelPelanggan;
    protected $modelInvoice;
    public function __construct()
    {
        $this->model = new ModelInvoice();
        $this->modelKeranjang = new ModelKeranjang();
        $this->modelPelanggan = new ModelPelanggan();
        $this->modelItem = new ModelItem();
    }

    public function index(): string
    {
        // Mengambil 10 data teratas yang telah di-group dan dijumlahkan
        $data['dataInvoice'] = $this->model->select('tanggal, SUM(total_harga) as total_harga, SUM(tunai) as tunai, SUM(kembalian) as kembalian')
            ->groupBy('tanggal')
            ->orderBy('tanggal', 'desc')
            ->where('status', 'sukses')
            ->limit(7)
            ->findAll();

        // Mengambil tanggal dan total_harga
        $labelsSales = [];
        $totalsSales = [];

        $labelsTunai = [];
        $totalsTunai = [];

        foreach ($data['dataInvoice'] as $invoice) {
            $labelsSales[] = $invoice['tanggal'];
            $totalsSales[] = $invoice['total_harga'];
        }
        foreach ($data['dataInvoice'] as $invoice) {
            $labelsTunai[] = $invoice['tanggal'];
            $totalsTunai[] = $invoice['tunai'];
        }
        // Menghitung jumlah data dengan status 'pending'
        $pendingCountQuery = $this->model->select('COUNT(*) as pendingCount')
            ->where('status', 'pending')
            ->first();
        // Pastikan $pendingCountQuery bukan null atau kosong
        $data['pendingCount'] = isset($pendingCountQuery['pendingCount']) ? $pendingCountQuery['pendingCount'] : 0;

        $sumPenjualanQuery = $this->model->select('SUM(total_harga) as sumPenjualan')
            ->first();
        // Pastikan $pendingCountQuery bukan null atau kosong
        $data['sumPenjualan'] = isset($sumPenjualanQuery['sumPenjualan']) ? $sumPenjualanQuery['sumPenjualan'] : 0;

        // Menghitung jumlah data dengan status 'sukses'
        $suksesCountQuery = $this->model->select('COUNT(*) as suksesCount')
            ->where('status', 'sukses')
            ->first();
        $data['suksesCount'] = isset($suksesCountQuery['suksesCount']) ? $suksesCountQuery['suksesCount'] : 0;

        // Menghitung total data
        $totalCountQuery = $this->model->select('COUNT(*) as totalCount')
            ->first();
        $data['totalCount'] = isset($totalCountQuery['totalCount']) ? $totalCountQuery['totalCount'] : 0;

        $pelangganCountQuery = $this->modelPelanggan->select('COUNT(*) as totalItem')
            ->first();
        $data['totalPelanggan'] = isset($pelangganCountQuery['totalPelanggan']) ? $pelangganCountQuery['totalPelanggan'] : 0;

        $itemCountQuery = $this->modelItem->select('COUNT(*) as totalItem')
            ->first();
        $data['totalItem'] = isset($itemCountQuery['totalItem']) ? $itemCountQuery['totalItem'] : 0;


        // Menambahkan labels dan totals ke dalam data
        $data['labelsSales'] = $labelsSales;
        $data['totalsSales'] = $totalsSales;
        // Menambahkan labels dan totals ke dalam data
        $data['labelsTunai'] = $labelsTunai;
        $data['totalsTunai'] = $totalsTunai;
        return view('dashboard_view', $data);
    }
}