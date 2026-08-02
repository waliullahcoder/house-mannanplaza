<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SetupProject extends Model
{
    protected $table = "tbl_setup_project";
     protected $fillable = [
        'code',
        'name',
        'ebill_rate',
        'wbill_rate',
        'contact',
        'address',
    ];
}
