/// Validators untuk form input validasi
class AppValidators {
  /// Validasi email
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email tidak boleh kosong';
    }

    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    if (!emailRegex.hasMatch(value)) {
      return 'Masukkan email yang valid';
    }

    return null;
  }

  /// Validasi nama
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nama tidak boleh kosong';
    }

    if (value.length < 3) {
      return 'Nama minimal 3 karakter';
    }

    if (value.length > 100) {
      return 'Nama maksimal 100 karakter';
    }

    return null;
  }

  /// Validasi message
  static String? validateMessage(String? value) {
    if (value == null || value.isEmpty) {
      return 'Pesan tidak boleh kosong';
    }

    if (value.length < 10) {
      return 'Pesan minimal 10 karakter';
    }

    if (value.length > 1000) {
      return 'Pesan maksimal 1000 karakter';
    }

    return null;
  }

  /// Validasi phone number
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nomor telepon tidak boleh kosong';
    }

    final phoneRegex = RegExp(r'^[0-9+\-\(\)\s]{10,}$');

    if (!phoneRegex.hasMatch(value)) {
      return 'Masukkan nomor telepon yang valid';
    }

    return null;
  }

  /// Validasi URL
  static String? validateUrl(String? value) {
    if (value == null || value.isEmpty) {
      return 'URL tidak boleh kosong';
    }

    try {
      Uri.parse(value);
      if (!value.startsWith('http://') && !value.startsWith('https://')) {
        return 'URL harus dimulai dengan http:// atau https://';
      }
      return null;
    } catch (e) {
      return 'URL tidak valid';
    }
  }
}
