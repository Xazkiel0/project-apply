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
        Schema::create('vehicles', function (Blueprint $table) {
            $table->string('id')->primary();
            $table->string('name');
            $table->string('image');
            $table->enum('owner',['Cabang','Pusat']);
            $table->text('description')->nullable();
            $table->string('brand');
            $table->enum('carry',['person','material']);
            $table->date('service_date');
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
        Schema::dropIfExists('vehicles');
    }
};
