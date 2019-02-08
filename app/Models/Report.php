<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use TCG\Voyager\Traits\Translatable;
use TCG\Voyager\Traits\Resizable;

class Report extends Model
{
    use Translatable,Resizable;
        
    protected $translatable = ['title','writer','year'];
}
