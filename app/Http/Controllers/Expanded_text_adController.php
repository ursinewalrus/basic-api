<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Support\Facades\Redis;
use Illuminate\Http\Request;
use App\Expanded_text_ad;

class expanded_text_adController extends BaseController
{

	public function showData(){
		$id = $_GET['id'];
		$expanded_text_ad = json_decode(Redis::get('Ex_'.$id));
		if($expanded_text_ad == null){
			$expanded_text_ad = Expanded_text_ad::getexpanded_text_ad($id);
			Redis::set('Ex_'.$id,$expanded_text_ad);//30 min cache time

		}
		//could also just echo it back but will show in view this way
		return view('expanded_text_ad-view',compact('expanded_text_ad'));

	}

	public function deleteData(Request $request){
		$id = $request->id;
		Expanded_text_ad::deleteexpanded_text_ad($id);
	}

	public function insertData(){
		$data = $request->data;
		return Expanded_text_ad::postexpanded_text_ad($data);
	}

	public function updateData(Request $request){
		$id = $request->id;
		$data = json_decode($request->data,true);
		return Expanded_text_ad::updateexpanded_text_ad($id,$data);
	}

}
