import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spendee/auth/auth_repository.dart';
import 'package:spendee/reset_password/reset_password_event.dart';
import 'package:spendee/reset_password/reset_password_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent,ResetPasswordState>{
  final AuthRepository authRepo = AuthRepository();
  ResetPasswordBloc(): super(ResetPasswordState());

  @override
  Stream<ResetPasswordState> mapEventToState(ResetPasswordEvent event) async* {
    if(event is ResetPassword){
      yield state.copyWith(reset_password: event.reset_password);
    }
  }
}