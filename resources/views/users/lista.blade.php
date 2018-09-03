@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <div class="row">
                        <div class="center">
                                <a href="{{ url('users/create') }}" class="btn btn-primary">Novo&nbsp;<i class="fa fa-plus"></i></a>
                            </div>
                    </div>
                </div>             
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <table class="table table-hover"> 
                       <tr> 
                            <th> Nome </th>
                            <th> E-mail</th>
                            <th> Data de Criação </th>
                       </tr>
                      
                        @foreach ($users as $user)
                        <tr>
                            <td> {{ $user->name}} </td>
                            <td> {{ $user->email}} </td>
                            <td> {{ date('d/m/Y',strtotime($user->created_at))}}</td>                                          
                       </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
