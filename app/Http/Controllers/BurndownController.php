<?php

namespace App\Http\Controllers;

use App\Models\Burndown;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BurndownController extends Controller
{
	
	public function getBurndown(){
		$userid = auth()->user()->id;
		
		$currentlypending  = count(\DB::select('select * from tasks where user_id = ? and is_complete = 0', [$userid] ));
		
		$actualArray = array_fill(0, 61,$currentlypending);
		for($i=0;$i<60;$i++){
			
			$date = date("Y-m-d H:i:s");
			$time = strtotime($date);
			$time0 = $time - (60 * 60);
			$time1 = $time0 + (($i ) * 60);
			$time2 = $time1 + ((1) * 60);
			$date0 = date("Y-m-d H:i:s", $time0);
			$date1 = date("Y-m-d H:i:s", $time1);
			$date2 = date("Y-m-d H:i:s", $time2);
			
			$closedinthatinterval = count(\DB::select('select * from tasks where user_id = ? and is_complete = 1 and updated_at between ? and ?', [$userid , $date1, $date2] ));
			
			
			if($closedinthatinterval > 0){
				for($j=0;$j<=$i;$j++){
					$actualArray[$j] += $closedinthatinterval;
				}
			}
			
		}
		return $actualArray;
	}
	
	
	 public function index()
    {
		
		
        // return task index view with paginated tasks
        return view('burndown')->with(['data' => $this->getBurndown()]);
    }

}
