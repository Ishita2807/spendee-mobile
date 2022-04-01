class ResetPasswordState {
  String reset_password;

  ResetPasswordState({this.reset_password=''});
  ResetPasswordState copyWith({
  String? reset_password
})
  {
    return ResetPasswordState(
      reset_password: reset_password?? this.reset_password
    );
  }
}