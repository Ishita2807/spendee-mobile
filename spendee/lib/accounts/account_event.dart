
import 'package:flutter/cupertino.dart';

abstract class AccountEvent{}

class AccountName extends AccountEvent{

  final String account_name;

  AccountName({required this.account_name});

}
class AccountType extends AccountEvent{
  final dynamic account_type;
  AccountType({required this.account_type});
}

class SaveAccountButton extends AccountEvent{
  BuildContext context;
  SaveAccountButton({required this.context});

}
class AddAccount extends AccountEvent{
  BuildContext context;
  AddAccount({required this.context});

}

