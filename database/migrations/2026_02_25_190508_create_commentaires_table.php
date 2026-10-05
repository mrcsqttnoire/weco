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
        Schema::create('commentaires', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('Id_user')->unsigned();
            $table->bigInteger('Id_publication')->unsigned();
            $table->text('content_com');
            $table->foreign('Id_user')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('Id_publication')->references('id')->on('publications')->onDelete('cascade')->onUpdate('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('commentaires');
    }
};
