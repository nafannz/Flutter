/// API Service untuk komunikasi dengan backend
///
/// Dokumentasi:
/// - Gunakan class ini untuk membuat request ke API
/// - Implementasi HTTP client dengan error handling
/// - Support untuk JSON serialization/deserialization

import '../models/user_profile.dart';
import '../utils/logger.dart';

class ApiService {
  // Base URL - ubah sesuai kebutuhan
  static const String baseUrl = 'https://api.flutter-profile.com';

  /// Fetch user profile dari API
  ///
  /// Returns: UserProfile object
  /// Throws: Exception jika request gagal
  static Future<UserProfile> fetchUserProfile(String userId) async {
    try {
      AppLogger.info('Fetching user profile for ID: $userId');

      // TODO: Implementasi HTTP request ke: $baseUrl/api/v1/profiles/$userId
      // Contoh:
      // final response = await http.get(
      //   Uri.parse('$baseUrl/api/v1/profiles/$userId'),
      // );
      //
      // if (response.statusCode == 200) {
      //   final json = jsonDecode(response.body);
      //   return UserProfile.fromJson(json);
      // } else {
      //   throw Exception('Failed to load profile');
      // }

      AppLogger.info('User profile fetched successfully');
      return UserProfile.demo(); // Return demo data for now
    } catch (e, stackTrace) {
      AppLogger.error('Failed to fetch user profile', e, stackTrace);
      rethrow;
    }
  }

  /// Update user profile
  ///
  /// Parameters:
  /// - userId: ID pengguna
  /// - profile: Data profil yang diupdate
  static Future<bool> updateUserProfile(
    String userId,
    UserProfile profile,
  ) async {
    try {
      AppLogger.info('Updating user profile for ID: $userId');

      // TODO: Implementasi HTTP PUT request ke: $baseUrl/api/v1/profiles/$userId
      // const headers = {
      //   'Content-Type': 'application/json',
      // };
      //
      // final response = await http.put(
      //   Uri.parse('$baseUrl/api/v1/profiles/$userId'),
      //   headers: headers,
      //   body: jsonEncode(profile.toJson()),
      // );
      //
      // if (response.statusCode == 200) {
      //   AppLogger.info('Profile updated successfully');
      //   return true;
      // } else {
      //   throw Exception('Failed to update profile');
      // }

      AppLogger.info('Profile updated successfully');
      return true;
    } catch (e, stackTrace) {
      AppLogger.error('Failed to update profile', e, stackTrace);
      rethrow;
    }
  }

  /// Send contact message
  ///
  /// Parameters:
  /// - name: Nama pengirim
  /// - email: Email pengirim
  /// - message: Pesan
  static Future<bool> sendContactMessage({
    required String name,
    required String email,
    required String message,
  }) async {
    try {
      AppLogger.info('Sending contact message from: $email');

      // TODO: Implementasi HTTP POST request ke: $baseUrl/api/v1/messages
      // const headers = {
      //   'Content-Type': 'application/json',
      // };
      //
      // final body = {
      //   'name': name,
      //   'email': email,
      //   'message': message,
      //   'timestamp': DateTime.now().toIso8601String(),
      // };
      //
      // final response = await http.post(
      //   Uri.parse('$baseUrl/api/v1/messages'),
      //   headers: headers,
      //   body: jsonEncode(body),
      // );
      //
      // if (response.statusCode == 201) {
      //   AppLogger.info('Message sent successfully');
      //   return true;
      // } else {
      //   throw Exception('Failed to send message');
      // }

      AppLogger.info('Message sent successfully');
      return true;
    } catch (e, stackTrace) {
      AppLogger.error('Failed to send message', e, stackTrace);
      rethrow;
    }
  }

  /// Download CV file
  ///
  /// Returns: URL untuk download CV
  static Future<String> getDownloadCvUrl(String userId) async {
    try {
      AppLogger.info('Fetching CV download URL for ID: $userId');

      // TODO: Implementasi HTTP GET request ke: $baseUrl/api/v1/profiles/$userId/cv/download
      // final response = await http.get(
      //   Uri.parse('$baseUrl/api/v1/profiles/$userId/cv/download'),
      // );
      //
      // if (response.statusCode == 200) {
      //   final json = jsonDecode(response.body);
      //   return json['download_url'] as String;
      // } else {
      //   throw Exception('Failed to get CV URL');
      // }

      AppLogger.info('CV URL fetched successfully');
      return 'https://example.com/cv.pdf';
    } catch (e, stackTrace) {
      AppLogger.error('Failed to get CV URL', e, stackTrace);
      rethrow;
    }
  }
}
