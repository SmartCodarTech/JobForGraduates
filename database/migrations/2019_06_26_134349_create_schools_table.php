<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSchoolsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('schools', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('graduate_id')->unsigned();
            $table->string('name', 120);
            $table->string('country', 120);
            $table->string('town', 120);
            $table->string('program', 60);
            $table->string('certificate', 120);
            $table->string('cert_number', 120);
            $table->string('cert_file', 60);
            $table->string('start_date', 120);
            $table->string('end_date', 120);
            $table->foreign('graduate_id')->references('id')->on('graduate');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('schools');
    }
}
