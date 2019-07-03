<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\AddCourses;
use App\AddCategory;


class AddCoursesController extends Controller
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
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $courses = DB::table('add_course')
        ->leftJoin('addcategory', 'add_course.cat_id', '=', 'addcategory.id')
       
        ->select('add_course.*', 'addcategory.name as cat_name','addcategory.id as cat_id')
        
       ->paginate(5);

       return view('system-mgmt/course/index', ['courses' => $courses]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categorys = AddCategory::all();
        return view('system-mgmt/course/create', [
         'categorys' => $categorys]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validateInput($request);
         AddCourses::create([
            'name' => $request['name'],
            'cat_id' => $request['cat_id']
        ]);

        return redirect()->intended('system-management/course');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $courses = AddCourses::find($id);
        // Redirect to country list if updating country wasn't existed
        if ($courses == null || count($courses) == 0) {
            return redirect()->intended('/system-management/course');
        }

        return view('system-mgmt/course/edit', ['courses' => $courses]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $courses = AddCourses::findOrFail($id);
        $input = [
            'name' => $request['name'],
            'cat_id' => $request['cat_id']
        ];
        $this->validate($request, [
        'name' => 'required|max:60'
        ]);
        AddCourses::where('id', $id)
            ->update($input);
        
        return redirect()->intended('system-management/course');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        AddCourses::where('id', $id)->delete();
         return redirect()->intended('system-management/course');
    }

    /**
     * Search country from database base on some specific constraints
     *
     * @param  \Illuminate\Http\Request  $request
     *  @return \Illuminate\Http\Response
     */
    public function search(Request $request) {
        $constraints = [
            'name' => $request['name'],
            'cat_id' => $request['cat_id']
            ];

       $countries = $this->doSearchingQuery($constraints);
       return view('system-mgmt/course/index', ['courses' => $courses, 'searchingVals' => $constraints]);
    }

    private function doSearchingQuery($constraints) {
        $query = AddCourses::query();
        $fields = array_keys($constraints);
        $index = 0;
        foreach ($constraints as $constraint) {
            if ($constraint != null) {
                $query = $query->where( $fields[$index], 'like', '%'.$constraint.'%');
            }

            $index++;
        }
        return $query->paginate(5);
    }
    private function validateInput($request) {
        $this->validate($request, [
        'name' => 'required|max:60|unique:add_course',
        'cat_id' => 'required|max:3|'
    ]);
    }
}
