<?php

namespace App\Providers;

use Form;
use Illuminate\Support\ServiceProvider;

class FormSettingsProvider extends ServiceProvider
{
    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        Form::component('bsText', 'components.form.text', ['name','label', 'value' => null, 'attributes' => []]);
        Form::component('bsPassword', 'components.form.password', ['type','name','label', 'value' => null, 'attributes' => []]);
    }

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
