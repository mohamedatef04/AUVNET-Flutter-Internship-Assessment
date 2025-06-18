import 'dart:io';

import 'package:auvnet_internship_task/core/errors/custom_exeption.dart';
import 'package:auvnet_internship_task/features/auth/domain/repos/auth_repo.dart';
import 'package:auvnet_internship_task/features/auth/presentation/managers/blocs/signup%20bloc/sign_up_state.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sign_up_event.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(this.authRepo) : super(const SignUpState()) {
    on<SignUpWithEmailAndPasswordEvent>(onSignUpWithEmailAndPassword);
  }
  final AuthRepo authRepo;

  Future<void> onSignUpWithEmailAndPassword(
    SignUpWithEmailAndPasswordEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, isSuccess: false, errorMessage: null));
    try {
      await authRepo.signUpWithEmailAndPassword(
        profileImageUrl: event.profileImageUrl,
        name: event.name,
        email: event.email,
        password: event.password,
        image: event.image,
        path: event.path,
      );
      emit(state.copyWith(isLoading: false, isSuccess: true));
    } on CustomExeption catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.errorMessage));
    }
  }
}
