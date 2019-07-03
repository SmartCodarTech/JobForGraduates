<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AddCourses extends Model
{
    
    protected $table='add_course';

     protected $fillable = [
        'name', 'cat_id'
    ];
}
