@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Novo Usuário</div>

                <div class="card-body">
                        @if(Session::has('mensagem_sucesso'))
                        <div class="alert alert-success">{{ Session::get('mensagem_sucesso')}}</div>
                @endif 
                <form action="{{route('users.store')}}" method="POST">               
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    {!! Form::label('name','Nome:') !!}                
                    <div class="form-group has-feedback">
                        <input type="text" class="form-control" placeholder="Nome" name="name" value="{{ old('name') }}" autofocus/>
                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    </div>                   
                    @if (config('auth.providers.users.field','email') === 'username')      
                         <input type="text" name="email" class="form-control" placeholder="dhayllin@hotmail.com"  value="{{ old('email')}}">  
                    @endif
                    <div class="form-group has-feedback">
                        {!! Form::label('email','E-Mail') !!}
                        <input type="email" class="form-control" placeholder="{{ trans('adminlte_lang::message.email') }}" name="email" value="{{ old('email') }}"/>
                        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    </div>                                                           
                    <div class="form-group has-feedback">
                        {!! Form::label('password','Senha') !!}
                        <input type="password" id="txtName" value="" class="form-control" placeholder="******" name="password"/><br>                      
                    </div>
                    {!! Form::submit('Criar Usuário',['class'=>'btn btn-primary']) !!}
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
