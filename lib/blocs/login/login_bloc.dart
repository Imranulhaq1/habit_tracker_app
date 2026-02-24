import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracker_app/blocs/login/login_event.dart';
import 'package:habit_tracker_app/blocs/login/login_stats.dart';

class LoginBloc extends Bloc<LoginEvent, LoginStats> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginSumitted>((event, emit) async {
      emit(LoginLoading());
      await Future.delayed(Duration(seconds: 2));
      if (event.email == "test@gmail.com" && event.password == "123456") {
        emit(LoginSuccess());
      } else {
        emit(LoginFailure("Ivaild credentials"));
      }
    });
  }
}
