<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Response;
use Auth;
use App\AddCountry;
use App\Graduates;



class GraduateController extends Controller
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
       $graduates = Graduates::paginate(10);
        return view('graduate-mgmt/index', ['graduates' => $graduates]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
      
        $countries = AddCountry::all();
     
        return view('graduate-mgmt/create', [
        'countries' => $countries]);
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
        // Upload image
        $path = $request->file('picture')->store('avatars');
        $keys = ['lastname', 'firstname','middlename', 'address','country','city','phone','email','current_status','zip','age','birthdate', 'gender',
        'user_id'];
        $input = $this->createQueryInput($keys, $request);
        $input['picture'] = $path;
        Graduates::create($input);

        return redirect()->intended('/graduate-management');
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
        $graduates = Graduates::find($id);
        // Redirect to state list if updating state wasn't existed
        if ($graduates == null || count($graduates) == 0) {
            return redirect()->intended('/graduates-management');
        }
      
        $countries = AddCountry::all();
        
        return view('graduates-mgmt/edit', ['graduates' => $graduates, 
        'countries' => $countries]);
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
        $graduates = Graduates::findOrFail($id);
        $this->validateInput($request);
        // Upload image
     $keys = ['lastname', 'firstname','middlename', 'address','country','city','phone','email','current_status','zip','age','birthdate', 'gender',
        'user_id'];
        $input = $this->createQueryInput($keys, $request);
        if ($request->file('picture')) {
            $path = $request->file('picture')->store('avatars');
            $input['picture'] = $path;
        }

        Graduates::where('id', $id)
            ->update($input);

        return redirect()->intended('/graduate-management');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
         Graduates::where('id', $id)->delete();
         return redirect()->intended('/graduates-management');
    }

    /**
     * Search state from database base on some specific constraints
     *
     * @param  \Illuminate\Http\Request  $request
     *  @return \Illuminate\Http\Response
     */
    public function search(Request $request) {
        $constraints = [
            'firstname' => $request['firstname'],
            'department.name' => $request['department_name']
            ];
        $civilians = $this->doSearchingQuery($constraints);
        $constraints['department_name'] = $request['department_name'];
        return view('graduate-mgmt/index', ['graduates' => $graduates, 'searchingVals' => $constraints]);
    }

    private function doSearchingQuery($constraints) {
        $query = DB::table('graduate')
        ->leftJoin('department', 'civilian.department_id', '=', 'department.id')
        ->leftJoin('bank', 'civilian.bank_id', '=', 'bank.id')
    
        ->select('employees.firstname as employee_name', 'employees.*','department.name as department_name', 'department.id as department_id', 'division.name as division_name', 'division.id as division_id');
        $fields = array_keys($constraints);
        $index = 0;
        foreach ($constraints as $constraint) {
            if ($constraint != null) {
                $query = $query->where($fields[$index], 'like', '%'.$constraint.'%');
            }

            $index++;
        }
        return $query->paginate(5);
    }

     /**
     * Load image resource.
     *
     * @param  string  $name
     * @return \Illuminate\Http\Response
     */
    public function load($name) {
         $path = storage_path().'/app/avatars/'.$name;
        if (file_exists($path)) {
            return Response::download($path);
        }
    }

    private function validateInput($request) {
        $this->validate($request, [
            'lastname' => 'required|max:60',
            'firstname' => 'required|max:60',
            'middlename' => 'required|max:60',
            'address' => 'required|max:60',
            'country' => 'required|max:60',
            'city' => 'required|max:60',
            'phone' => 'required|max:60',
            'email' => 'required|max:60',
             'current_status' => 'required|max:60',
            'zip' => 'required',
            'age'=>'required',
            'birthdate'=>'required',
            'gender' => 'required',
           
            'user_id' => 'required'
        ]);
    }

    private function createQueryInput($keys, $request) {
        $queryInput = [];
        for($i = 0; $i < sizeof($keys); $i++) {
            $key = $keys[$i];
            $queryInput[$key] = $request[$key];
        }

        return $queryInput;
    }
}

