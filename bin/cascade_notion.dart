class User {
  String? username;
  String? age;
  String? email;
}

User? createUser() {
  return null;
}

void main() {
  // Tanpa cascade notion
  var u1 = User();

  u1.username = "andre";
  u1.age = "23";
  u1.email = "andrepriyanto10@gmail.com";

  // dengan casecade notion
  var u2 =
      User()
        ..username = "Ari"
        ..age = "23"
        ..email = "asd@gmail.com";

  User? u3 =
      createUser()
        ?..username = "Ari"
        ..age = "23"
        ..email = "asd@gmail.com";
  ;

  print(u3?.age);
}
