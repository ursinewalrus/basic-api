<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Ad_group extends Model
{
   
	protected $fillable = ['name','status','campaign_id'];
	public $timestamps = false;

    public function expanded_text_ad(){
    	return $this->hasMany('App\Expanded_text_ad'); //could also be hasOne but can't tell from sample JSON so assuming can have many
    }

    public static function getAd_group($id){
    	return Ad_group::findOrFail($id);
    }

    public static function postAd_group($data){
    	$ad_group = Ad_group::create($data);
    	return $ad_group;
    }

    public static function deleteAd_group($id){
        $campaign = Ad_group::find($id);
        $campaign->delete();
    }


    public static function updateAd_group($id,$data){
        return Ad_group::updateOrCreate(['id'=>$id],$data);//will update, will also create a new one if non used ID given 
    }

}
