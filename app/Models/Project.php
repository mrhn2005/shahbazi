<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use TCG\Voyager\Traits\Translatable;
use TCG\Voyager\Traits\Resizable;

class Project extends Model
{
    use Translatable,
        Resizable;
        
    protected $translatable = ['title','body','begin_date','end_date','excerpt','position'];
}
