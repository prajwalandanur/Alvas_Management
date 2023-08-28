import 'package:alvas_management/login%20and%20register/register_bloc/register_events.dart';
import 'package:alvas_management/login%20and%20register/register_bloc/register_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class RegisterBloc extends Bloc<RegisterEvents, RegisterState> {
  RegisterBloc() : super(RegisterInitialState()) {
    on<RegisterToLoginNavigateEvent>((event, emit) {
        emit(RegisterToLoginNavigateState());
    });
  }
}