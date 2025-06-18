import 'package:auvnet_internship_task/core/errors/custom_exeption.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseDatabaseService {
  final SupabaseClient supabase = Supabase.instance.client;
  Future<void> storeUserData({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    try {
      await supabase.from(path).insert(data);
    } on CustomExeption catch (e) {
      throw CustomExeption(errorMessage: e.toString());
    }
  }
}
