<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AddCountry extends Model
{
    protected $table = 'add_country';

    /**
    * The attributes that aren't mass assignable.
    *
    * @var array
    */
    protected $guarded = [];
}
