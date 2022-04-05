import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spendee/create_account/create_account_event.dart';
import 'package:spendee/create_account/create_account_state.dart';

import '../auth/auth_repository.dart';

class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState>{

  final AuthRepository authRepo = AuthRepository();

  CreateAccountBloc() : super(CreateAccountState());

  @override
  Stream<CreateAccountState> mapEventToState(CreateAccountEvent event) async*{

    if(event is FirstName){
      yield state.copyWith(first_name: event.first_name);
    }
    else if(event is LastName)
    {
      yield state.copyWith(last_name: event.last_name);
    }
    else if(event is EmailAddress)
    {
      yield state.copyWith(email_address: event.email_address);
    }
    else if(event is CreatePassword)
    {
      yield state.copyWith(create_password: event.create_password);
    }

    else if(event is RegisterAccount)
    {
      print("Create Account Event Called");
      print(state.email_address);
      print(state.create_password);
      print(state.first_name);
      print(state.last_name);
      var response = await authRepo.createAccount(state.first_name,state.last_name,
          state.email_address,state.create_password);

      if(response.statusCode == 200)
      {
        var jsonData = jsonDecode(response.body);
        print(jsonData);
        Navigator.of(event.context).pushNamed('/');

      }
      else{
        print("Failed to Signup");
      }
    }

  }
}