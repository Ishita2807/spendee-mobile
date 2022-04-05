import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spendee/accounts/account_event.dart';
import 'package:spendee/accounts/account_state.dart';
import 'package:spendee/category/category_event.dart';

import '../auth/auth_repository.dart';


class AccountBloc extends Bloc<AccountEvent, AccountState>{

  final AuthRepository authRepo = AuthRepository();

  AccountBloc() : super(AccountState());

  @override
  Stream<AccountState> mapEventToState(AccountEvent event) async*{

    if(event is AccountName){
      yield state.copyWith(account_type: event.account_name);
    }
    else if(event is SaveAccountButton)
    {
      print("Save account event Called");
      print(state.account_type);

      var response = await authRepo.account(state.number,state.balance,state.user_id,state.name,state.account_type);

      if(response.statusCode == 200)
      {
        var jsonData = jsonDecode(response.body);
        Navigator.of(event.context).pushNamed('/Seventh',arguments: {
          "account_type" : state.account_type
        });

      }
      else{
        print("Failed to create account type");
      }
    }

  }
}