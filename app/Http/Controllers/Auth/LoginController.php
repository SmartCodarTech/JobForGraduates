<?php
namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Http\Traits\RedirectTrait;


class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;
    use RedirectTrait;

    /**
     * Where to redirect users after login.
     *
     * @var string
     *

    protected $redirectTo = '/dashboard';
    protected $redirectTo = '/user_dashboard';
    protected $redirectTo = '/employeer_dashboard';**/
    protected function authenticated(Request $request, $user)
    {
           return $this->RedirectBasedInRole($request, $user);
    }

    /**
     * Create a new controller instance.
     *
     * @return void

     */
     protected function hasTooManyLoginAttempts ($request) {
        $maxLoginAttempts = 2;
        $lockoutTime = 5; // 5 minutes
        return $this->limiter()->tooManyAttempts(
            $this->throttleKey($request), $maxLoginAttempts, $lockoutTime
        );
    }
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}
