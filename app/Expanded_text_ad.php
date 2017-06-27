<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Expanded_text_ad extends Model
{

    public $timestamps = false;
	protected $fillable = ['xsi_type','ad_group_id','headline_part1','headline_part2','description','path1','path2'];

    public static function getExpanded_text_ad($id){
    	return Expanded_text_ad::findOrFail($id);
    }

    public static function postExpanded_text_ad($data){
    	$campaign = Expanded_text_ad::create($data);//no need to sanitaize, laravel does it for us
    	return $campaign;

    }

    public static function updateExpanded_text_ad($id,$data){
        return Expanded_text_ad::updateOrCreate(['id'=>$id],$data);//will update, will also create a new one if non used ID given 
    }

    public static function deleteExpanded_text_ad($id){
        $campaign = Expanded_text_ad::find($id);
        $campaign->delete();
    }

}
