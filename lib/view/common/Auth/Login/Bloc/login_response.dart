import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  String responseCode;
  String response;
  Data data;

  LoginModel({
    required this.responseCode,
    required this.response,
    required this.data,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        responseCode: json["Response Code"],
        response: json["Response"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "Response Code": responseCode,
        "Response": response,
        "data": data.toJson(),
      };
}

class Data {
  String accessToken;
  bool isStaff;
  dynamic isMember;
  bool isSuperuser;
  dynamic branchCode;

  Data({
    required this.accessToken,
    required this.isStaff,
    required this.isMember,
    required this.isSuperuser,
    required this.branchCode,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        accessToken: json["access_token"],
        isStaff: json["is_staff"],
        isMember: json["is_member"],
        isSuperuser: json["is_superuser"],
        branchCode: json["branch_code"],
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "is_staff": isStaff,
        "is_member": isMember,
        "is_superuser": isSuperuser,
        "branch_code": branchCode,
      };
}
