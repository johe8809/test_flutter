class User {
  User({
    this.name,
    this.email,
    this.token,
  });

  String name;
  String email;
  String token;

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    token = json['token'];
  }
}
