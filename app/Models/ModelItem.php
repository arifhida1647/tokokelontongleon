<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelItem extends Model
{
    protected $table = 'tb_item';
    protected $primaryKey = 'id';
    protected $allowedFields = ['nama_item', 'kategori', 'unit','id_pemasok','price','harga','stok','updated_at'];

}
