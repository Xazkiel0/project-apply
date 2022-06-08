<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rent_vehs', function (Blueprint $table) {
            $table->string('id')->primary();
            $table->string('name');
            $table->string('brand');
            $table->enum('carry',['person','material']);
            $table->string('owner')->default('Perusahaan 1');
            $table->date('rent_till');
            $table->string('contact')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rent_vehs');
    }
};
