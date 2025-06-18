part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpEvent {}

class SignUpWithEmailAndPasswordEvent extends SignUpEvent {
  final String name;
  final String email;
  final String password;
  final String profileImageUrl;
  final File image;
  final String path;

  SignUpWithEmailAndPasswordEvent({
    required this.name,
    required this.email,
    required this.password,
    required this.profileImageUrl,
    required this.image,
    required this.path,
  });
}
