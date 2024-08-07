class LoginInput {
  String? contact;
  String? password;
  String? role;

  LoginInput({
    required this.contact,
    required this.password,
    required this.role,
  });

  factory LoginInput.fromJson(Map<String, dynamic> json) => LoginInput(
        contact: json["contact"],
        password: json["password"],
        role: json["role"],
      );

  // Map<String, dynamic> toJson() => {
  //       "loginInput": {
  //         "contact": contact,
  //         "password": password,

  //       }
  //     };
}
