import 'dart:io';

import 'package:auvnet_internship_task/core/errors/custom_exeption.dart';
import 'package:auvnet_internship_task/core/networking/api_contants.dart';
import 'package:auvnet_internship_task/core/networking/supabase_constants.dart';
import 'package:auvnet_internship_task/core/services/hive_local_storage_service.dart';
import 'package:auvnet_internship_task/core/services/supabase_auth_service.dart';
import 'package:auvnet_internship_task/core/services/supabase_database_service.dart';
import 'package:auvnet_internship_task/features/auth/domain/repos/auth_repo.dart';
import 'package:gotrue/src/types/user.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepoImpl implements AuthRepo {
  final SupabaseAuthService supabaseAuthService;
  final SupabaseDatabaseService supabaseDatabaseService;
  final SupabaseClient supabase = Supabase.instance.client;
  final localStorage = HiveLocalStorageService();

  AuthRepoImpl({
    required this.supabaseAuthService,
    required this.supabaseDatabaseService,
  });
  @override
  Future<User> signUpWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
    required String profileImageUrl,
    required File image,
    required String path,
  }) async {
    try {
      final res = await supabaseAuthService.signUpWithEmailAndPassword(
        email: email,
        password: password,
      );
      await uplaodUserProfileImage(path: path, image: image);

      await storeUserData(
        data: {'name': name, 'email': email, 'image_url': profileImageUrl},
        path: usersTableEndpoint,
      );
      await localStorage.saveUserData({
        'name': name,
        'email': email,
        'image_url': profileImageUrl,
      });

      return res;
    } on CustomExeption catch (e) {
      throw CustomExeption(errorMessage: e.toString());
    }
  }

  @override
  Future<User> logInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final res = await supabaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return res;
    } on CustomExeption catch (e) {
      throw CustomExeption(errorMessage: e.toString());
    }
  }

  @override
  Future<void> storeUserData({
    required Map<String, dynamic> data,
    required String path,
  }) async {
    try {
      await supabaseDatabaseService.storeUserData(data: data, path: path);
    } on CustomExeption catch (e) {
      throw CustomExeption(errorMessage: e.toString());
    }
  }

  @override
  Future<void> uplaodUserProfileImage({
    required String path,
    required File image,
  }) async {
    try {
      await supabase.storage
          .from(supabaseStorageBucketName)
          .upload(path, image);
    } on CustomExeption catch (e) {
      throw CustomExeption(errorMessage: e.toString());
    }
  }
}
