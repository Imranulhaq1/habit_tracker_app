import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracker_app/blocs/sigup/sigup_State.dart';
import 'package:habit_tracker_app/blocs/sigup/sigup_event.dart';

class SignupBloc extends Bloc<SigupEvent, SigupState> {
  SignupBloc() : super(SigupInitial()) {
    on<SignupSubmitted>((event, emit) async {
      emit(SingupLoading());
      await Future.delayed(Duration(seconds: 2));
      emit(SingupSuccess());
    });
  }
}
