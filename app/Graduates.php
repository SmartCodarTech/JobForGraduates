<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Graduates extends Model
{
    protected $table = 'graduate';

    /**
    * The attributes that aren't mass assignable.
    *
    * @var array
    */
    protected $guarded = [];
}
