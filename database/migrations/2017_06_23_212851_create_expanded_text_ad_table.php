<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateExpandedTextAdTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('expanded_text_ads',function(Blueprint $table){
            $table->increments('id');
            $table->string('xsi_type');
            $table->integer('ad_group_id')->unsigned()->onDelete('cascade');
            $table->foreign('ad_group_id')->references('id')->on('ad_groups');
            $table->string('headline_part1');
            $table->string('headline_part2');
            $table->string('description');
            $table->string('path1');
            $table->string('path2');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('expanded_text_ad');
    }
}
