<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SetupRates extends Model
{
    protected $table = "tbl_setup_rate";
     protected $fillable = [
        'project_id',
        'type',
        'rate'
    ];
    public $timestamps = false;
}
