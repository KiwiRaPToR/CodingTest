<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class UserTest extends TestCase
{

    /**
     * A basic test example.
     *
     * @return void
     */
    public function testUserExists()
    {
         $this->assertDatabaseHas('users', [
			'email' => 'test1@test.com'
		]);
    }
	

	

}
