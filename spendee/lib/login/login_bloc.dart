import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth/auth_repository.dart';
import 'login_event.dart';
import 'login_state.dart';


class LoginBloc extends Bloc<LoginEvent, LoginState>{

  final AuthRepository authRepo = AuthRepository();

  LoginBloc() : super(LoginState());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async*{

    if(event is LoginEmail){
      yield state.copyWith(email: event.email);
    }
    else if(event is LoginPassword)
    {
      yield state.copyWith(password: event.password);
    }

    else if(event is Login)
    {
      print("Login Event Called");
      print(state.email);
      print(state.password);
      var response = await authRepo.login(state.email,state.password);

      if(response.statusCode == 200)
      {
        var jsonData = jsonDecode(response.body);
        Navigator.of(event.context).pushNamed('/');

      }
      else{
        print("Failed to login");
      }
    }

  }
}