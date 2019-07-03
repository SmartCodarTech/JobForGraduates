<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\AddSchools;

class AddSchoolsController extends Controller
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
        $schools = AddSchools::paginate(10);

        return view('system-mgmt/schools/index', ['schools' => $schools]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('system-mgmt/schools/create');
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
         AddSchools::create([
            'name' => $request['name'],
            'type' => $request['type'],
            'location' => $request['location']
        ]);

        return redirect()->intended('system-management/schools');
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
        $schools = AddSchools::find($id);
        // Redirect to country list if updating country wasn't existed
        if ($schools == null || count($schools) == 0) {
            return redirect()->intended('/system-management/schools');
        }

        return view('system-mgmt/schools/edit', ['schools' => $schools]);
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
        $schools = AddSchools::findOrFail($id);
        $input = [
            'name' => $request['name'],
              'typr' => $request['type'],
            'location' => $request['location']
        ];
        $this->validate($request, [
        'name' => 'required|max:60'
        'type' => 'required|max:60'
        'location' => 'required|max:60'
        ]);
        AddSchools::where('id', $id)
            ->update($input);
        
        return redirect()->intended('system-management/schools');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        AddSchools::where('id', $id)->delete();
         return redirect()->intended('system-management/schools');
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
             'type' => $request['type'],
            'location' => $request['location']
            ];

       $schools= $this->doSearchingQuery($constraints);
       return view('system-mgmt/schools/index', ['schools' => $schools, 'searchingVals' => $constraints]);
    }

    private function doSearchingQuery($constraints) {
        $query = AddSchools::query();
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
        'name' => 'required|max:60|unique:add_shool',
        'location' => 'required',
        'type' => 'required'
    ]);
    }
}
