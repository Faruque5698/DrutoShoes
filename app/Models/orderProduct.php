<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class orderProduct extends Model
{
    use HasFactory;

    protected $guared = ['id'];

    public function products(){
        return $this->belongsTo(Product::class, 'product_id', 'id');
    }
}
