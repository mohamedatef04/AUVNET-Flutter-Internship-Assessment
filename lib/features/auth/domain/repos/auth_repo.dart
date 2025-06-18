import 'dart:io';

import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRepo {
  Future<User> signUpWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
    required String profileImageUrl,
    required File image,
    required String path,
  });
  Future<User> logInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> uplaodUserProfileImage({
    required String path,
    required File image,
  });

  Future<void> storeUserData({
    required Map<String, dynamic> data,
    required String path,
  });
}
