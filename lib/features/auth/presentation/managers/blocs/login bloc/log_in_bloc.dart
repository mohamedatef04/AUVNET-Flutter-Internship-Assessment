import 'package:auvnet_internship_task/core/errors/custom_exeption.dart';
import 'package:auvnet_internship_task/features/auth/domain/repos/auth_repo.dart';
import 'package:auvnet_internship_task/features/auth/presentation/managers/blocs/login%20bloc/log_in_state.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'log_in_event.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  LogInBloc(this.authRepo) : super(const LogInState()) {
    on<LogInWithEmailAndPasswordEvent>(onLogInWithEmailAndPassword);
  }

  final AuthRepo authRepo;

  Future<void> onLogInWithEmailAndPassword(
    LogInWithEmailAndPasswordEvent event,
    Emitter<LogInState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, isSuccess: false, errorMessage: null));
    try {
      await authRepo.logInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      emit(state.copyWith(isLoading: false, isSuccess: true));
    } on CustomExeption catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.errorMessage));
    }
  }
}
