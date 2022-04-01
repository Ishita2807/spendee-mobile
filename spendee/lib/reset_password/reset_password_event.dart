abstract class ResetPasswordEvent{}

class ResetPassword extends ResetPasswordEvent{

  final String reset_password ;

  ResetPassword({required this.reset_password});
}

class ResetPasswordButton extends ResetPasswordEvent{

  final String reset_password_but ;

  ResetPasswordButton({required this.reset_password_but});
}


