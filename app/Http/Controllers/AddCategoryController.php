<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\AddCategory;

class AddCategoryController extends Controller
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
        $categorys = AddCategory::paginate(5);

        return view('system-mgmt/category/index', ['categorys' => $categorys]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('system-mgmt/category/create');
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
         AddCategory::create([
            'name' => $request['name']
           
        ]);

        return redirect()->intended('system-management/category');
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
        $categorys= AddCategory::find($id);
        // Redirect to country list if updating country wasn't existed
        if ($category == null || count($category) == 0) {
            return redirect()->intended('/system-management/category');
        }

        return view('system-mgmt/category/edit', ['categorys' => $categorys]);
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
        $categorys = AddCategory::findOrFail($id);
        $input = [
            'name' => $request['name']
           
        ];
        $this->validate($request, [
        'name' => 'required|max:60'
        ]);
        AddCategory::where('id', $id)
            ->update($input);
        
        return redirect()->intended('system-management/category');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        AddCategory::where('id', $id)->delete();
         return redirect()->intended('system-management/category');
    }

    /**
     * Search country from database base on some specific constraints
     *
     * @param  \Illuminate\Http\Request  $request
     *  @return \Illuminate\Http\Response
     */
    public function search(Request $request) {
        $constraints = [
            'name' => $request['name']
            
            ];

       $countries = $this->doSearchingQuery($constraints);
       return view('system-mgmt/category/index', ['courses' => $courses, 'searchingVals' => $constraints]);
    }

    private function doSearchingQuery($constraints) {
        $query = AddCategory::query();
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
        'name' => 'required|max:60|unique:addcategory'
     
    ]);
    }

}
