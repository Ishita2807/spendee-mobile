
import 'package:flutter/material.dart';
import 'package:spendee/reset_password/reset_password.dart';

import 'create_account/create_account.dart';
import 'login/login.dart';

void main(){
  runApp(MyApp());

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


