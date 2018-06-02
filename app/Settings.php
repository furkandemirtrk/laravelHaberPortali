<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Settings extends Model
{
    protected $table='settings';
    protected $fillable=['logo','title','keywords','description','url',
        'telefon','gsm','faks','adres','il','ilce',
        'facebook','twitter','instagram','youtube',
        'google','recapctha','maps','analystic',
        'smtp_user','smtp_password','smtp_host','smtp_port'];
}
