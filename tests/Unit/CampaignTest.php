<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;
use CampaignController;
use Illuminate\Support\Facades;
use App;

class CampaignTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */

    // dubious as we are testing to see if update works
    //and that would have to assume it works here but this way we dont 
    //have to make global variabels to share between methods
    //e.g. after create/update/delete, use same ID from create
    // so dont need to hardcode
	public function setUp(){
		 parent::setUp();
		  $this->createApplication();
		//we will use soemthing not used elsewhere do it doesnt overlap with tests
		$auto_cam = App\Campaign::create(array('name'=>'testauto',
											   'status'=>'test','budget'=>1,
											   'advertising_channel_type'=>'test'));
		$this->auto_id = $auto_cam->id;
	}

    //somewhat more of an integration test since it has db interaction but 
    //not much business logic happens here so not a ton to test
    public function testGet()
    {
    	//assuming the id==1 campaign is gonna be in there,
    	//simulate GET request to it
        $response = $this->call('GET','api/campaigns', array('id'=>1));
        $content = $response->getOriginalContent();
        $data = $content->getData();
        //returns correct campaign
        $this->assertEquals($data['campaign']->id,1);
    }

    public function testPost()
    {	
    	$response = $this->call('POST','api/campaigns', array('data'=>array('name'=>'test',
    														  'status'=>'test',
    														  'budget'=>2000,
    														  'advertising_channel_type'=>'test')));
    	$content = $response->getOriginalContent();
    	//returned ID of created, gotta be >0
    	$new_id = $content->id;

    	$this->assertGreaterThan(0,$new_id);
    	//now double check it
    	$response = $this->call('GET','api/campaigns', array('id'=>$new_id));
    	$content = $response->getOriginalContent();
    	$data = $content->getData();
        //returns correct campaign
        $this->assertEquals($data['campaign']->id,$new_id);
    }

    public function testPut(){
    	$response = $this->call('PUT', 'api/campaigns', array('id'=>$this->auto_id,'data'=>array('name'=>'testUpdate')));
    	$content = $response->content();
    	// $data = $content->getData();
     	$this->assertEquals('testUpdate',json_decode($content)->name);

    }

    public function testDelete(){
    	$response = $this->call('DELETE','api/campaigns',array('id'=>$this->auto_id));
    	try{
    		App\Campaign::findOrFail($this->auto_id);
    	}
    	catch(\Illuminate\Database\Eloquent\ModelNotFoundException $e){
    			$this->assertTrue(true); //if it got here it through the error i expected, it didnt find the model
    	}
    	
    }
}
