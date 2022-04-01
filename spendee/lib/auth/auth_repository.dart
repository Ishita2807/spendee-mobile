import 'dart:convert';
import 'package:http/http.dart' as http;


class AuthRepository {

  createAccount(String first_name,String last_name,String email_address, String create_password) async {
    print("http://rails.docswiz.com:9000/users.json");

    Map<String, String> header = {
      'Content-type': 'application/json',
      'Accept': 'application/json'
    };

    Map<String, String> body = Map();
    body["first_name"]= first_name;
    body["last_name"]=last_name;
    body["email"] = email_address;
    body["password"] = create_password;

    Map<String, dynamic> body1 = Map();
     body1["user"] = body;

    print(body1);
    var response = await http.post(
        Uri.parse("http://rails.docswiz.com:9000/users.json"),
        headers: header,
        body: json.encode(body1));
    print(response.statusCode);
    print(response.body);
    var jsondata = json.decode(response.body);
    return response;
  }

  login(String email, String password) async {
    print("http://rails.docswiz.com:9000/sessions.json");

    Map<String, String> header = {
      'Content-type': 'application/json',
      'Accept': 'application/json'
    };
    Map<String, String> body2 = Map();
    body2["email"] = email;
    body2["password"] = password;
    Map<String, dynamic> body3 = Map();
    body3["user"] = body2;
    print(body3);
    var response = await http.post(
        Uri.parse("http://rails.docswiz.com:9000/sessions.json"),
        headers: header,
        body: json.encode(body3)); //getting url
    print(response.statusCode);
    print(response.body);
    // var jsondata = json.decode(response.body);
    return response;
  }




  createCategory(String category_name,int parent_category_id,int user_id) async {
    print("http://rails.docswiz.com:9000/categories.json");

    Map<String, String> header = {
      'Content-type': 'application/json',
      'Accept': 'application/json'
    };

    Map<String, dynamic> body4 = Map();
    body4["category_name"]= category_name;
    body4["parent_category_id"]=parent_category_id;
    body4["user_id"] = user_id;

    Map<String, dynamic> body5 = Map();
    body5["category"] = body4;

    print(body5);
    var response = await http.post(
        Uri.parse("http://rails.docswiz.com:9000/categories.json"),
        headers: header,
        body: json.encode(body5));
    print(response.statusCode);
    print(response.body);
    var jsondata = json.decode(response.body);
    return response;
  }





}

