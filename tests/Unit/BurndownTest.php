<?php

namespace Tests\Unit;

use Tests\TestCase;
use App\Models\Burndown;
use Illuminate\Foundation\Testing\RefreshDatabase;

class BurndownTest extends TestCase
{

    /**
     * A basic test example.
     *
     * @return void
     */
    public function testBurndownExists()
    {
   
	$burndown = new Burndown(1);
	
	var_dump($burndown);
	var_dump($burndown->getIdealArray());
	var_dump($burndown->getActualArray());
	assert(true);
	
    }
	

	

}
