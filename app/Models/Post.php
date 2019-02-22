<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Models\Post as VoyagerPost;
class Post extends VoyagerPost
{
    public function date(){
        if($this->date_published){
            return $this->date_published;
        }
        return $this->created_at->diffForHumans();
    }
}
