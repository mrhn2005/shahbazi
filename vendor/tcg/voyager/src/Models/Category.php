<?php

namespace TCG\Voyager\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Traits\HasRelationships;
use TCG\Voyager\Traits\Translatable;

class Category extends Model
{
    use Translatable,
        HasRelationships;

    protected $table = 'categories';
    
    protected $translatable = ['slug', 'title'];

    protected $fillable = ['slug', 'title'];

    public function children()
    {
        return $this->hasMany(Voyager::modelClass('Category'), 'parent_id')
            ->with('children');
    }
    
    public function parent_items()
    {
        return $this->hasMany(Voyager::modelClass('Category'))
            ->whereNull('parent_id');
    }
    
    public function posts()
    {
        return $this->hasMany(Voyager::modelClass('Post'))
            ->published()
            ->orderBy('created_at', 'DESC');
    }

    public function parentId()
    {
        return $this->belongsTo(self::class);
    }
}
