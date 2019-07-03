<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AddSchools extends Model
{

    protected $table='add_shool';

     protected $fillable = [
        'name', 'type','location'
    ];
}
