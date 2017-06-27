<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redis;
use App\Campaign;

class CampaignController extends BaseController
{

	public function showData(Request $request){
		$id = $request->id;
		$campaign = json_decode(Redis::get('Cam_'.$id));
		if($campaign == null){
			$campaign = Campaign::getCampaign($id);
			//get its assoc ad groups
			$ad_group = $campaign->ad_group;
			Redis::set('Cam_'.$id,$campaign);

		}
		
		//could also just echo it back but will show in view
		return view('campaign-view',compact('campaign'));

	}

	public function deleteData(Request $request){
		$id = $request->id;
		Campaign::deleteCampaign($id);
	}

	public function insertData(Request $request){
		$data = $request->data;
		return Campaign::postCampaign($data);
	}

	public function updateData(Request $request){
		$id = $request->id;
		$data = $request->data;
		return Campaign::updateCampaign($id,$data);
	}

}
