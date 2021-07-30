class UserM {
  String id, name, username, email, password;
  int phone;
  bool admin, enable;
  static UserM currentUser;
  UserM(
      {this.id,
      this.name,
      this.email,
      this.username,
      this.phone,
      this.password,
      this.admin = false,
      this.enable = true,});
  factory UserM.fromJson(Map<String, dynamic> j) => UserM(
      id: j['id'],
      name: j['name'],
      email: j['email'],
      username: j['username'],
      phone: j['phone'],
      password: j['password'],
      admin: j['admin'],
      enable: j["enable"]);
  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "username": username,
        "phone": phone,
        "password": password,
        "admin": admin,
        "enable": enable
      };
}
