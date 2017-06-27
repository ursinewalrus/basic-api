<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Support\Facades\Redis;
use Illuminate\Http\Request;
use App\Ad_group;

class Ad_groupController extends BaseController
{

	public function showData(){
		$id = $_GET['id'];
		$ad_group = json_decode(Redis::get('Ag_' . $id));
		if($ad_group == null){
			$ad_group = Ad_group::getAd_group($id);
			$expanded = $ad_group->expanded_text_ad;
			Redis::set('Ag_'.$id,$ad_group);	
		}
		//get assoc expanded texts
		//could also just echo it back but will show in view
		return view('ad_group-view',compact('ad_group'));

	}

	public function deleteData(Request $request){
		$id = $request->id;
		Ad_group::deleteAd_group($id);
	}

	public function insertData(){
		$data = $request->data;
		return Ad_group::postAd_group($data);
	}

	public function updateData(Request $request){
		$id = $request->id;
		$data = json_decode($request->data,true);
		return Ad_group::updateAd_group($id,$data);
	}

}
