class UserM {
  String id, displayName, username, email, password;
  int phone;
  bool admin, enable;
  static UserM currentUser;
  UserM(
      {this.id,
      this.displayName,
      this.email,
      this.username,
      this.phone,
      this.password,
      this.admin = false,
      this.enable = true,});
  factory UserM.fromJson(Map<String, dynamic> j) => UserM(
      id: j['id'],
      displayName: j['name'],
      email: j['email'],
      username: j['username'],
      phone: j['phone'],
      password: j['password'],
      admin: j['admin'],
      enable: j["enable"]);
  Map<String, dynamic> toMap() => {
        "id": id,
        "name": displayName,
        "email": email,
        "username": username,
        "phone": phone,
        "password": password,
        "admin": admin,
        "enable": enable
      };
}
