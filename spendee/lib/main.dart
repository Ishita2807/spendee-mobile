
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spendee/category/category_bloc.dart';
import 'package:spendee/create_account/create_account_bloc.dart';
import 'package:spendee/reset_password/reset_password.dart';

import 'category/category_screen.dart';
import 'create_account/create_account.dart';
import 'homepage/home_screen.dart';
import 'login/login.dart';
import 'login/login_bloc.dart';

void main(){
  runApp(
      MultiBlocProvider(providers:
          [
            BlocProvider<CreateAccountBloc>(create: (BuildContext context)=> CreateAccountBloc(),),
            BlocProvider<LoginBloc>(create: (BuildContext context)=> LoginBloc(),),
            BlocProvider<CategoryBloc>(create: (BuildContext context)=> CategoryBloc(),)
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
        '/': (context)=> HomeScreen(),

        '/Second': (context)=> LoginScreen(),
        '/Third':(context)=> CreateAccount(),
        '/Fourth': (context)=> ResetPassword(),
        '/Fifth' : (context) => CategoryScreen()

      }
    );
  }
}


