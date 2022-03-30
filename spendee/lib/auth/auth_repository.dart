import 'dart:convert';
import 'package:http/http.dart' as http;
class AuthRepository {

  Login(String email, String password) async {
    print("  ");

    Map<String, String> header = {
      'Content-type': 'application/json',
      'Accept': 'application/json'
    };
    Map<String, String> body = Map();
    body["email"] = email;
    body["password"] = password;
    Map<String, dynamic> body1 = Map();
    // body1["session"] = body;

    print(body1);
    var response = await http.post(
        Uri.parse("     "),
        headers: header,
        body: json.encode(body1)); //getting url
    print(response.statusCode);
    print(response.body);
    var jsondata = json.decode(response.body);
    // print("User id ======== ${jsondata['user']['id']}");
    // var userid = jsondata['user']['id'];
    return response;
  }
}