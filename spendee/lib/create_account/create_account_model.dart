import 'dart:convert';

CreateAccountModel CreateAccountModelFromJson(String str)=> CreateAccountModel.fromJson(json.decode(str));
String CreateAccountModelToJson(CreateAccountModel data )=> json.encode(data.toJson());

class CreateAccountModel {
  String? first_name;
  String? last_name;
  String? email;
  String? password;

  CreateAccountModel({
    this.first_name,
    this.last_name,
    this.email,
    this.password,
  });

  factory CreateAccountModel.fromJson(Map<String, dynamic> json) => CreateAccountModel(
      first_name: json["first_name"],
      last_name: json["last_name"],
      email: json["email"],
      password: json["password"],
  );

  Map<String, dynamic> toJson() =>{
    "first_name": first_name,
    "last_name": last_name,
    "email": email,
    "password": password,
  };
}