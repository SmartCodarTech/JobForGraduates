<?php

namespace App\Http\Middleware;
use Illuminate\Http\Request;
 use Auth;

use Closure;

class AccessAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
    	if(Auth::user()->hasAnyRoles('admin'))
    	{
        return $next($request);
        }
        return redirect('/login');
    }
}
