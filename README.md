# Flutter Profile Application

Aplikasi Flutter Profile yang indah dan berfungsi sempurna dengan semua fitur terintegrasi. Aplikasi ini menampilkan profil pengguna, skills, projects, dan social links dengan UI yang responsif dan interaktif.

## Fitur Utama

✅ **Profile Header** - Menampilkan foto profil, nama, dan judul dengan gradient background
✅ **About Section** - Informasi kontak dan biodata pengguna
✅ **Skills Section** - Daftar skills dengan efek hover yang menarik
✅ **Projects Section** - Galeri project dengan hover effect
✅ **Social Links** - Tombol untuk terhubung melalui berbagai platform
✅ **Message Dialog** - Form untuk mengirim pesan langsung
✅ **Responsive Design** - Responsive di semua ukuran layar

## Struktur Proyek

```
lib/
├── main.dart                    # Entry point aplikasi
├── models/
│   ├── user_profile.dart       # Model data profil
│   └── index.dart              # Export models
├── screens/
│   └── profile_screen.dart     # Screen utama profil
└── widgets/
    ├── profile_header.dart     # Header widget
    ├── about_section.dart      # About section widget
    ├── skills_section.dart     # Skills widget
    ├── projects_section.dart   # Projects widget
    ├── social_links_section.dart # Social links widget
    └── index.dart              # Export widgets
```

## Dependencies

- `flutter` - Flutter SDK
- `cupertino_icons` - Material design icons
- `google_fonts` - Custom fonts dari Google Fonts
- `flutter_svg` - SVG rendering
- `url_launcher` - Untuk membuka URL
- `share_plus` - Share functionality
- `http` - HTTP client

## Cara Menggunakan

### 1. Install Dependencies

```bash
flutter pub get
```

### 2. Jalankan Aplikasi

```bash
flutter run -d chrome  # Untuk web
flutter run            # Untuk mobile
```

### 3. Build untuk Production

```bash
flutter build web     # Build untuk web
flutter build apk     # Build untuk Android
flutter build ios     # Build untuk iOS
```

## Fitur yang Tersedia

### Button dan Interaksi

- **Edit Profile** - Tombol untuk mengedit profil (ready untuk implementasi backend)
- **Download CV** - Tombol untuk download CV
- **View Project** - Klik project card untuk membuka link project
- **Social Links** - Klik untuk membuka social media
- **Send Message** - Dialog form untuk mengirim pesan

### Efek Visual

- Hover effects pada skills dan social buttons
- Smooth animations pada semua interaksi
- Gradient background pada header
- Shadow effects pada card
- Responsive grid untuk projects

## Customization

### Mengubah Data Profil

Edit file `lib/models/user_profile.dart`:

```dart
factory UserProfile.demo() {
  return UserProfile(
    name: 'Your Name',
    title: 'Your Title',
    // ... customize data lainnya
  );
}
```

### Mengubah Warna Theme

Edit file `lib/main.dart`:

```dart
theme: ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,  // Ubah warna di sini
  ),
),
```

## Troubleshooting

### Error pada saat build

```bash
flutter clean
flutter pub get
flutter pub upgrade
```

### Error pada web

```bash
flutter web-repo
flutter run -d chrome
```

## Versi

- Version: 1.0.0
- Flutter SDK: >= 3.0.0
- Dart SDK: >= 3.0.0

## Lisensi

MIT License - Bebas untuk digunakan untuk keperluan personal maupun komersial.

## Support

Untuk bantuan atau pertanyaan, silakan buat issue di repository ini.

---

Built with ❤️ using Flutter
