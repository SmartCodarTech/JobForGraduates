<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
//use Illuminate\Support\Facades\ConsoleTVs\Charts\Charts


class EmployeersDashboardController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
 
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        return view('employeer_dashboard');

    }
       public function show()
    {
        
       //$results = Employee::all();

        //$total_officers = $results->sum('employees');
        //return view('results');

    }
}
