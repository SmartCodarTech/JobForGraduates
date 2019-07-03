<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AddCategory extends Model
{
    
    protected $table='addcategory';

     protected $fillable = [
        'name'
    ];
}
