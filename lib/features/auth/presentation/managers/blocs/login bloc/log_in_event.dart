part of 'log_in_bloc.dart';

@immutable
abstract class LogInEvent {}

class LogInWithEmailAndPasswordEvent extends LogInEvent {
  final String email;
  final String password;

  LogInWithEmailAndPasswordEvent({required this.email, required this.password});
}
