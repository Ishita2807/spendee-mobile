
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spendee/reset_password/reset_password.dart';

import 'create_account/create_account.dart';
import 'login/login.dart';
import 'login/login_bloc.dart';

void main(){
  runApp(
      MultiBlocProvider(providers:
          [
          BlocProvider<LoginBloc>(create: (BuildContext context)=> LoginBloc(),)
          ],

      child:MyApp()
      ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {
        '/': (context)=> Login(),
        '/Second':(context)=> CreateAccount(),
        '/Third': (context)=> ResetPassword()

      }
    );
  }
}


