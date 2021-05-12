<?php

namespace App\Http\Middleware;

use Closure;

class AuthPermission
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
        $user = session(".config_user");
        if ($user) return redirect("/be-admin");
        return $next($request);
    }
}
