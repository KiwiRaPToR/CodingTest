<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class TaskTest extends TestCase
{

	public function testUserDoesntExist()
    {
		
		$this->assertDatabaseHas('tasks', [
			'user_id' => 1
		]);
	}	
}
