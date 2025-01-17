<?php

namespace App\Controllers;

use App\Models\ModelItem;
use App\Models\ModelPemasok;
use CodeIgniter\Controller;

class Items extends Controller
{
    protected $model;
    protected $modelKategori;
    protected $modelUnit;
    protected $modelPemasok;
    public function __construct()
    {
        $this->model = new ModelItem(); 
        $this->modelPemasok = new ModelPemasok();
    }

    public function hapus($id)
    {
        // Perform delete action
        $this->model->delete($id);

        // Log the action
        // $this->logAction('delete', $id);

        return redirect()->to('items');
    }

    public function edit($id)
    {
        // Perform edit action
        $item = $this->model->find($id);

        // Log the action
        // $this->logAction('edit', $id);

        return json_encode($item);
    }

    public function simpan()
    {
        $validasi = \Config\Services::validation();
        $aturan = [
            'nama_item' => [
                'label' => 'nama_item',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} harus diisi',
                    'min_length' => 'Minimum karakter untuk field {field} adalah 5 karakter'
                ]
            ],
            'kategori' => [
                'label' => 'kategori',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} harus diisi',
                    'min_length' => 'Minimum karakter untuk field {field} adalah 5 karakter'
                ]
            ],
            'unit' => [
                'label' => 'unit',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} harus diisi',
                    'numeric' => '{field} harus berupa angka'
                ]
            ],
            'id_pemasok' => [
                'label' => 'pemasok',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} harus diisi',
                    'numeric' => '{field} harus berupa angka'
                ]
            ],
            'harga' => [
                'label' => 'harga',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} harus diisi',
                    'numeric' => '{field} harus berupa angka'
                ]
            ],
            'stok' => [
                'label' => 'stok',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} harus diisi',
                    'numeric' => '{field} harus berupa angka'
                ]
            ],
        ];

        $validasi->setRules($aturan);
        if ($validasi->withRequest($this->request)->run()) {
            // Save action
            $id = $this->request->getPost('id');
            $nama_item = $this->request->getPost('nama_item');
            $kategori = $this->request->getPost('kategori');
            $unit = $this->request->getPost('unit');
            $id_pemasok = $this->request->getPost('id_pemasok');
            $harga = $this->request->getPost('harga');
            $stok = $this->request->getPost('stok');

            $data = [
                'id' => $id,
                'nama_item' => $nama_item,
                'kategori' => $kategori,
                'unit' => $unit,
                'id_pemasok' => $id_pemasok,
                'harga' => $harga,
                'stok' => $stok,
                'updated_at' => date('Y-m-d H:i:s')
            ];

            $this->model->save($data);

            // Determine action message
            // $actionMessage = ($item_id) ? 'edit item with id ' . $item_id : 'new item';

            // Log the action
            // $this->logAction('save', $item_id, $actionMessage);

            $hasil['sukses'] = "Berhasil memasukkan data";
            $hasil['error'] = false;
        } else {
            // Handle validation errors
            $hasil['sukses'] = false;
            $hasil['error'] = $validasi->listErrors();
        }

        return json_encode($hasil);
    }

    public function index()
    {
        $data['dataPemasok'] = $this->modelPemasok->orderBy('id', 'desc')->findAll();

        $data['dataItem'] = $this->model
            ->select('tb_item.*, tb_pemasok.nama_pemasok as nama_pemasok')
            ->join('tb_pemasok', 'tb_item.id_pemasok = tb_pemasok.id')
            ->orderBy('tb_item.id', 'desc')
            ->findAll();
        return view('item_view', $data);
    }

    // // Function to log actions
    // protected function logAction($action, $item_id, $actionMessage = null)
    // {
    //     $admin_id = session()->get('admin_id'); // Assuming admin_id is stored in session

    //     // Create log data
    //     $logData = [
    //         'admin_id' => $admin_id,
    //         'action' => ucfirst($action) . ' ' . ($actionMessage ?: 'table items with id ' . $item_id),
    //     ];

    //     // Save log using ModelLog
    //     $modelLog = new ModelLog();
    //     $modelLog->save($logData);
    // }
}

