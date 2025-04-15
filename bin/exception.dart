// Membuat Exception kustom di dart

class ValidationException implements Exception {
  String message;
  ValidationException(this.message);
}

class Validate {
  static void isValidateString(String? value) {
    if (value == null || value.isEmpty) {
      throw ValidationException("Value is null or empty");
    }
  }
}

// kita bisa menambahkan stacktrace untuk melihat kode mana yang error.

void main() {
  try {
    Validate.isValidateString(null);
  } on ValidationException catch (e, s) {
    print(e.message);
    print(s); // stacktrace
  } finally {
    print('Finally block executed');
  }

  print('Selesai');
}
