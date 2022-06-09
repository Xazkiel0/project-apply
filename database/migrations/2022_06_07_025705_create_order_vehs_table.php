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
        Schema::create('order_vehs', function (Blueprint $table) {
            $table->id();
            $table->integer('driver_id');
            $table->integer('approver_id');
            $table->string('tambang');
            $table->text('note')->nullable();
            $table->integer('rent_id')->nullable();
            $table->string('vehicle_id')->nullable();
            $table->integer('progress')->default(0);
            $table->date('date_back')->nullable();
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
        Schema::dropIfExists('order_vehs');
    }
};
