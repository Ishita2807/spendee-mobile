import 'package:flutter/cupertino.dart';

abstract class CreateAccountEvent{}

class FirstName extends CreateAccountEvent{

  final String first_name ;

  FirstName({required this.first_name});
}

class LastName extends CreateAccountEvent{

  final String last_name;

  LastName({required this.last_name});
}

class EmailAddress extends CreateAccountEvent{

  final String email_address;

  EmailAddress({required this.email_address});
}
class CreatePassword extends CreateAccountEvent{

  final String create_password;

  CreatePassword({required this.create_password});
}
class RegisterAccount extends CreateAccountEvent{

  BuildContext context;

  RegisterAccount({required this.context});
}



