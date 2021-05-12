<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Multi_message extends Model
{
    protected $fillable = ['id','uid','username','content','to_username'];
}
