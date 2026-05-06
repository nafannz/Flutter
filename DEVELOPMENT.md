# Development Setup Guide

Panduan lengkap untuk setup dan development environment untuk proyek Flutter Profile.

## Prerequisites

Sebelum memulai, pastikan Anda telah menginstall:

- **Flutter SDK** (version >= 3.0.0)
  - Download dari: https://flutter.dev/docs/get-started/install
- **Dart SDK** (included dengan Flutter)
- **Git** untuk version control

- **IDE / Code Editor**:
  - VS Code dengan Flutter extension
  - Android Studio
  - IntelliJ IDEA

## Installation

### 1. Clone Repository

```bash
git clone <repository-url>
cd Flutter
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Get Packages

```bash
flutter pub upgrade
```

## Running the Application

### Mobile (iOS/Android)

```bash
# Untuk device fisik atau emulator
flutter run

# Dengan mode release
flutter run --release
```

### Web

```bash
flutter run -d chrome
```

### Desktop (Windows/macOS/Linux)

```bash
flutter run -d <desktop-platform>
```

## Building for Production

### Web Build

```bash
flutter build web

# Output akan berada di: build/web/
```

### Android Build

```bash
# Debug APK
flutter build apk

# Release APK
flutter build apk --release

# App Bundle
flutter build appbundle
```

### iOS Build

```bash
# iOS App
flutter build ios

# Output untuk TestFlight
flutter build ios --release
```

## Project Structure

```
lib/
├── main.dart              # Entry point aplikasi
├── models/               # Data models
│   └── user_profile.dart # Profile model
├── screens/              # Halaman aplikasi
│   └── profile_screen.dart
└── widgets/              # Reusable widgets
    ├── profile_header.dart
    ├── about_section.dart
    ├── skills_section.dart
    ├── projects_section.dart
    └── social_links_section.dart

web/
├── index.html           # HTML entry point
└── manifest.json        # PWA manifest

assets/                  # Static assets
├── images/
└── fonts/
```

## Code Style & Conventions

### Naming Conventions

- **Files**: `snake_case` (e.g., `profile_screen.dart`)
- **Classes**: `PascalCase` (e.g., `ProfileScreen`)
- **Variables**: `camelCase` (e.g., `userName`)
- **Constants**: `camelCase` (e.g., `maxAttempts`)

### Dart Formatting

```bash
# Format semua file
dart format .

# Format file tertentu
dart format lib/main.dart
```

### Analysis

```bash
# Run dart analysis
dart analyze

# Atau dengan flutter
flutter analyze
```

## Git Workflow

### Branches

- `main` - Production branch
- `develop` - Development branch
- `feature/*` - Feature branches
- `bugfix/*` - Bug fix branches

### Commit Message Format

```
<type>(<scope>): <subject>

<body>

<footer>
```

**Types:**

- `feat` - Fitur baru
- `fix` - Bug fix
- `docs` - Documentation changes
- `style` - Code style changes
- `refactor` - Code refactoring
- `test` - Adding tests
- `chore` - Maintenance tasks

## Testing

### Run Tests

```bash
flutter test

# Run specific test file
flutter test test/widgets/profile_header_test.dart

# Run dengan coverage
flutter test --coverage
```

## Debugging

### Debug Mode

```bash
flutter run
```

### Debug Web

```bash
flutter run -d chrome --debug
```

### Using DevTools

```bash
flutter pub global activate devtools
devtools
```

## Common Issues & Solutions

### Issue: `flutter: command not found`

**Solution:**

```bash
# Add Flutter to PATH
export PATH="$PATH:`pwd`/flutter/bin"
```

### Issue: Dependencies conflict

**Solution:**

```bash
flutter pub get
flutter pub upgrade --aggressive
```

### Issue: Hot reload tidak bekerja

**Solution:**

```bash
flutter clean
flutter pub get
flutter run
```

### Issue: Build error web

**Solution:**

```bash
flutter clean
flutter pub cache repair
flutter pub get
flutter build web
```

## Performance Optimization

### Tips:

1. Gunakan `const` keyword untuk widgets yang immutable
2. Hindari rebuild yang unnecessary dengan `const` constructors
3. Gunakan `ListView.builder` untuk list yang panjang
4. Lazy load images dengan `Image.network`
5. Minimalkan state management

## Useful Commands

```bash
# Clean build artifacts
flutter clean

# Get Flutter Doctor info
flutter doctor

# Format code
dart format .

# Analyze code
dart analyze

# Run app in release mode
flutter run --release

# Build APK
flutter build apk --release

# Build Web
flutter build web

# Generate app icons
flutter pub run flutter_launcher_icons:main
```

## Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Language Guide](https://dart.dev/guides)
- [Material Design](https://material.io/design)
- [Pub.dev Packages](https://pub.dev)

## Getting Help

- 📚 Check the [README.md](./README.md)
- 🔧 Run `flutter doctor` untuk diagnostics
- 💬 Ask in [Flutter Community](https://flutter.dev/community)

---

Happy coding! 🚀
