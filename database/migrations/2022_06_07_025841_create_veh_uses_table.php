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
        Schema::create('veh_uses', function (Blueprint $table) {
            $table->id();
            $table->integer('order_id');
            $table->enum('type',['fuel','repair','other']);
            $table->integer('spend');
            $table->integer('fuel');
            $table->string('note')->nullable();
            $table->string('photo')->nullable();
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
        Schema::dropIfExists('veh_uses');
    }
};
