import 'package:flutter/cupertino.dart';

abstract class LoginEvent{}

class LoginEmail extends LoginEvent{

  final String email;

  LoginEmail({required this.email});
}

class LoginPassword extends LoginEvent{

  final String password;

  LoginPassword({required this.password});
}

class Login extends LoginEvent{
   BuildContext context;
   Login({required this.context});
}
