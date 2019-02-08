<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Information extends Model
{
    use Translatable;
    protected $translatable = ['birthday','birthcity','about','language','address','specialty','introduction'];
}
