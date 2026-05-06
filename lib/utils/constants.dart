/// Konstanta aplikasi Flutter Profile
class AppConstants {
  // App Info
  static const String appName = 'Flutter Profile';
  static const String appVersion = '1.0.0';
  static const String appAuthor = 'Flutter Developer';

  // URLs
  static const String appUrl = 'https://flutter-profile.com';
  static const String githubUrl = 'https://github.com';
  static const String linkedinUrl = 'https://linkedin.com';
  static const String twitterUrl = 'https://twitter.com';

  // API Endpoints
  static const String apiBaseUrl = 'https://api.flutter-profile.com';
  static const String apiVersion = '/v1';

  // Timeouts
  static const Duration apiTimeout = Duration(seconds: 30);
  static const Duration connectionTimeout = Duration(seconds: 10);

  // Padding & Margins
  static const double paddingXSmall = 4;
  static const double paddingSmall = 8;
  static const double paddingMedium = 16;
  static const double paddingLarge = 24;
  static const double paddingXLarge = 32;

  // Border Radius
  static const double borderRadiusSmall = 4;
  static const double borderRadiusMedium = 8;
  static const double borderRadiusLarge = 16;
  static const double borderRadiusCircle = 50;

  // Elevation
  static const double elevationSmall = 1;
  static const double elevationMedium = 2;
  static const double elevationLarge = 8;

  // Durations
  static const Duration animationDurationShort = Duration(milliseconds: 200);
  static const Duration animationDurationMedium = Duration(milliseconds: 500);
  static const Duration animationDurationLong = Duration(milliseconds: 1000);

  // Sizes
  static const double avatarRadiusSmall = 32;
  static const double avatarRadiusMedium = 60;
  static const double avatarRadiusLarge = 80;

  // Responsive Breakpoints
  static const double mobileBreakpoint = 600;
  static const double tabletBreakpoint = 900;
  static const double desktopBreakpoint = 1200;
}
