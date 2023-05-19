<?php

namespace App\Models;
use App\Http\Controllers;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    public $timestamps = false;
    protected $fillable = ['customer_name', 'customer_phone', 'customer_email', 'customer_password'];
    protected $primaryKey = 'customer_id';
    protected $table = 'tbl_customers';
}
