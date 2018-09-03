<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use DB;
Use Mail;
use App\Mail\ConfirmaCadastro;
use Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
        $users = User::all();
        return  view('users/lista',['users'=>$users]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('users/novo');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user = new User();
        $user->name= $request->name;
        $user->email= $request->email;
        $user->password = Hash::make($request->password);
        $user->save();

        if($user){
            Mail::to($request->email,$request->name)->send(new ConfirmaCadastro($request));
            if(!Mail::failures()){
                DB::commit();
                \Session::flash('mensagem_sucesso','Cadastrado com sucesso!'); 
                return view('users/novo');
            }else{
                DB::rollback();
                \Session::flash('mensagem_sucesso','Cadastrado com sucesso!'); 
                return  view('users/novo');
            }
        }
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
