<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Campaign extends Model
{

	protected $fillable = ['name','status','budget','advertising_channel_type'];

	public $timestamps = false;

    public function ad_group(){
    	return $this->hasMany('App\Ad_group');
    }


    public static function getCampaign($id){
    	return Campaign::findOrFail($id);
    }

    public static function postCampaign($data){
    	$campaign = Campaign::create($data);//no need to sanitaize, laravel does it for us
    	return $campaign;

    }

    public static function updateCampaign($id,$data){
        return Campaign::updateOrCreate(['id'=>$id],$data);//will update, will also create a new one if non used ID given 
    }

    public static function deleteCampaign($id){
        $campaign = Campaign::find($id);
        $campaign->delete();
    }
}
