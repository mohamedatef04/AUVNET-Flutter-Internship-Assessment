import 'package:auvnet_internship_task/core/errors/custom_exeption.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAuthService {
  final SupabaseClient supabase = Supabase.instance.client;
  Future<User> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final res = await supabase.auth.signUp(email: email, password: password);
      return res.user!;
    } on AuthException catch (e) {
      throw CustomExeption(errorMessage: e.message);
    } catch (e) {
      throw const CustomExeption(errorMessage: 'something went wrong');
    }
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final user = await supabase.auth.signInWithPassword(
        password: password,
        email: email,
      );
      return user.user!;
    } on AuthException catch (e) {
      throw CustomExeption(errorMessage: e.message);
    } catch (e) {
      throw const CustomExeption(errorMessage: 'something went wrong');
    }
  }

  Future<bool> isExsit() async {
    if (supabase.auth.currentUser != null) {
      return true;
    } else {
      return false;
    }
  }
}
