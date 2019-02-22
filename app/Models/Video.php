<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;
use App;
use TCG\Voyager\Traits\Translatable;

class Video extends Model
{
    use Translatable;
    
    protected $translatable = ['title','date','slug'];
    
    public function apara(){
        if (App::environment('local')) {
           $video ='{"video":{"id":"6894537","title":"\u06a9\u0627\u0631\u0628\u0631\u0627\u062a\u0648\u0631 \u0631\u0627 \u0628\u0647 \u0645\u0648\u0632\u0647 \u0647\u0627 \u0628\u0633\u067e\u0627\u0631\u06cc\u0645 ...","username":"aqcc","userid":"338651","visit_cnt":1116,"uid":"JIPVr","isHidden":false,"process":"done","sender_name":"\u0634\u0631\u06a9\u062a \u06a9\u0646\u062a\u0631\u0644 \u06a9\u06cc\u0641\u06cc\u062a \u0647\u0648\u0627","big_poster":"https:\/\/static.cdn.asset.aparat.com\/avt\/6894537-8373-b__224813012.jpg","small_poster":"https:\/\/static.cdn.asset.aparat.com\/avt\/6894537-8373__1551.jpg","profilePhoto":"https:\/\/static.cdn.asset.aparat.com\/profile-photo\/338651-m.jpg","duration":"76","sdate":"27 \u0641\u0631\u0648\u0631\u062f\u06cc\u0646 1396","create_date":"2017-04-16 14:17:47","sdate_timediff":58503598,"frame":"https:\/\/www.aparat.com\/\/video\/video\/embed\/videohash\/JIPVr\/vt\/frame","official":"yes","tags":[{"name":"\u062a\u0647\u0631\u0627\u0646","cnt":"5000"},{"name":"\u0622\u0644\u0648\u062f\u06af\u06cc \u0647\u0648\u0627","cnt":"966"},{"name":"\u06a9\u0627\u0631\u0628\u0631\u0627\u062a\u0648\u0631","cnt":"29"}],"tag_str":"\u06a9\u0627\u0631\u0628\u0631\u0627\u062a\u0648\u0631 - \u0622\u0644\u0648\u062f\u06af\u06cc \u0647\u0648\u0627 - \u062a\u0647\u0631\u0627\u0646","description":"","cat_id":3,"cat_name":"\u0622\u0645\u0648\u0632\u0634\u06cc","autoplay":true,"video_date_status":"notset","360d":false,"deleteurl":"","playeradvertcornel":"","has_comment":"yes","has_comment_txt":"","size":"2042868","watch_action":{"type":"watch"},"cost_type":{"type":"free"},"can_download":true,"like_cnt":1,"follow_link":null,"follow_status":null}}';
           return json_decode($video)->video;
        }

        return json_decode(file_get_contents("https://www.aparat.com/etc/api/video/videohash/".$this->aparat_id))->video;
    }
    
    public function date(){
        $carbon = new Carbon($this->apara()->create_date);
        return $carbon->diffForHumans();
    }
}
