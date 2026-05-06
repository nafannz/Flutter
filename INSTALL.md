# Installation Guide

Panduan lengkap untuk menginstall dan menjalankan proyek Flutter Profile.

## System Requirements

Pastikan sistem Anda memenuhi persyaratan minimum:

- **Operating System**: macOS, Windows, atau Linux
- **RAM**: Minimum 8GB (recommended 16GB)
- **Disk Space**: Minimum 5GB untuk Flutter SDK + dependencies
- **Internet Connection**: Diperlukan untuk download dependencies

## Step 1: Install Flutter SDK

### macOS

```bash
# Download Flutter SDK
git clone https://github.com/flutter/flutter.git -b stable

# Add Flutter to PATH
export PATH="$PATH:`pwd`/flutter/bin"

# Verify installation
flutter --version
```

### Windows

1. Download Flutter SDK dari https://flutter.dev/docs/get-started/install/windows
2. Extract ke lokasi yang diinginkan (contoh: `C:\flutter`)
3. Add `C:\flutter\bin` ke Environment Variables PATH
4. Buka Command Prompt baru dan jalankan:

```bash
flutter --version
```

### Linux

```bash
# Download Flutter SDK
git clone https://github.com/flutter/flutter.git -b stable

# Add Flutter to PATH
export PATH="$PATH:`pwd`/flutter/bin"

# Verify installation
flutter --version
```

## Step 2: Install Dependencies

Sebelum melanjutkan, install tools yang diperlukan:

```bash
flutter doctor
```

Ikuti instruksi untuk menginstall tools yang belum ada:

- Android SDK (untuk development Android)
- Xcode (untuk development iOS - macOS only)
- VS Code atau Android Studio dengan Flutter plugin

## Step 3: Clone Proyek

```bash
git clone <repository-url>
cd Flutter
```

## Step 4: Get Flutter Packages

```bash
flutter pub get
```

Atau dengan upgrade dependencies:

```bash
flutter pub upgrade
```

## Step 5: Run Aplikasi

### Pilih Platform

#### Web

```bash
flutter run -d chrome
```

#### Mobile (iOS/Android)

```bash
# Untuk emulator Android
flutter emulators --launch <emulator-id>
flutter run

# Atau langsung ke device fisik
flutter run
```

#### macOS Desktop

```bash
flutter run -d macos
```

#### Windows Desktop

```bash
flutter run -d windows
```

#### Linux Desktop

```bash
flutter run -d linux
```

## Troubleshooting

### Issue: "flutter: command not found"

**Solution:**

```bash
# Add Flutter ke PATH secara permanent
echo 'export PATH="$PATH:$HOME/flutter/bin"' >> ~/.zshrc
source ~/.zshrc
```

### Issue: "Doctor says something is missing"

**Solution:**

```bash
flutter doctor -v
```

Install tools yang diminta sesuai OS Anda.

### Issue: "No devices found"

**Solution:**

Untuk Android:

```bash
# List available emulators
flutter emulators

# Launch emulator
flutter emulators --launch <emulator-name>
```

Untuk iOS (macOS):

```bash
# Open simulator
open /Applications/Simulator.app
```

### Issue: "Build cache is corrupted"

**Solution:**

```bash
flutter clean
flutter pub get
flutter run
```

### Issue: Dependencies conflict

**Solution:**

```bash
flutter pub upgrade
flutter clean
flutter pub get
```

## Verify Installation

Jalankan commands berikut untuk memverifikasi setup:

```bash
# Check Flutter version
flutter --version

# Run diagnostics
flutter doctor

# Check devices
flutter devices

# Run app
flutter run
```

## Next Steps

Setelah berhasil install:

1. **Read the README**: Baca [README.md](./README.md) untuk fitur-fitur
2. **Development Setup**: Ikuti [DEVELOPMENT.md](./DEVELOPMENT.md) untuk setup development
3. **Customization**: Edit [lib/models/user_profile.dart](./lib/models/user_profile.dart) untuk data Anda
4. **Build for Production**: Ikuti guide untuk build ke platform yang diinginkan

## Build untuk Production

### Web

```bash
flutter build web --release
# Output: build/web/
```

### Android

```bash
flutter build apk --release
flutter build appbundle --release
```

### iOS

```bash
flutter build ios --release
```

## Additional Resources

- [Flutter Official Documentation](https://flutter.dev/docs)
- [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)
- [Dart Language Documentation](https://dart.dev/guides)
- [Material Design Guidelines](https://material.io/design)

## Getting Help

Jika Anda mengalami masalah:

1. Periksa [Flutter Documentation](https://flutter.dev/docs)
2. Jalankan `flutter doctor` untuk diagnostics
3. Cek [Flutter Issues](https://github.com/flutter/flutter/issues)
4. Tanya di [Stack Overflow](https://stackoverflow.com/questions/tagged/flutter) dengan tag `flutter`

---

Happy coding! 🚀
