<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\View;
use Illuminate\Http\Response;
use App\Graduates;


class UserDashboardController extends Controller
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
       // $graduates = Graduates::paginate(10);


        $graduates = DB::table('graduate')
        ->leftJoin('skills', 'graduate.skill_id', '=', 'skill.id')
        ->leftJoin('schools', 'graduate.school_id', '=', 'school.id')
        ->select('graduate.*', 'skills.personal_skill as p_skills','skills.job_skill as j_skills','skills.job_skill_year as year_skills', 'skills.id as skill_id', 'schools.name as school_name','schools.country as school_country', 'schools.town as school_town','schools.program as school_program','schools.certificate as school_cert','schools.cert_number as school_cert_number','schools.cert_file as school_file','schools.start_date as school_start','schools.end_date as school_end','schools.id as school_id')
        ->paginate(10);
        return view('user_dashboard',['graduates' => $graduates]);

    }
       public function show()
    {
        
        $graduate = Graduates::all();
        return view('user_dashboard', ['graduates' => $graduates]);

    }
}
