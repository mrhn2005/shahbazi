<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use TCG\Voyager\Facades\Voyager;

use TCG\Voyager\Traits\Resizable;
// use TCG\Voyager\Traits\Translatable;


class Paper extends Model
{
    use  Resizable;
        
    // protected $translatable = ['title'];
    
    public function category(){
        return $this->belongsTo(Voyager::modelClass('Category'));
    }
}
