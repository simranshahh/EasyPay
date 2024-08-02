class LoginInput {
  String? contact;
  String? password;

  LoginInput({
    required this.contact,
    required this.password,
  });

  factory LoginInput.fromJson(Map<String, dynamic> json) => LoginInput(
        contact: json["contact"],
        password: json["password"],
      );

  // Map<String, dynamic> toJson() => {
  //       "loginInput": {
  //         "contact": contact,
  //         "password": password,

  //       }
  //     };
}
