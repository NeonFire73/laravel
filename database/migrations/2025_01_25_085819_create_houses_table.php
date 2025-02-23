<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('houses', function (Blueprint $table) {
            $table->id();
            $table->string('address');
            $table->integer('quantity_of_floors');
            $table->integer('quantity_of_apartments');
            $table->integer('quantity_of_entrance');
            $table->string('material_of_walls');
            $table->string('canalization');
            $table->boolean('elevator');
            $table->boolean('parking');
            $table->string('heating');
            $table->boolean('bomb_shelter');
            $table->boolean('basement');
            $table->string('security_measures');
            $table->string('classification');
            $table->float('price');
            $table->date('date_of_construction');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('houses');
    }
};
