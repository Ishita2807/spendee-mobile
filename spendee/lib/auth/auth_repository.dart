import 'dart:convert';
import 'package:http/http.dart' as http;


class AuthRepository {

  createAccount(String first_name,String last_name,String email_address, String create_password) async {
    print("http://rails.docswiz.com:9000/users.json");

    Map<String, String> header = {
      'Content-type': 'application/json',
      'Accept': 'application/json'
    };

    Map<String, String> body1 = Map();
    body1["first_name"]= first_name;
    body1["last_name"]=last_name;
    body1["email"] = email_address;
    body1["password"] = create_password;

    // Map<String, dynamic> body2 = Map();
    // body2["user"]= body1;

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
    print(body2);
    var response = await http.post(
        Uri.parse("http://rails.docswiz.com:9000/sessions.json"),
        headers: header,
        body: json.encode(body2)); //getting url
    print(response.statusCode);
    print(response.body);
    // var jsondata = json.decode(response.body);
    return response;
  }




  createCategory(String category_name,int parent_category_id) async {
    print("http://rails.docswiz.com:9000/categories.json");

    Map<String, String> header = {
      'Content-type': 'application/json',
      'Accept': 'application/json'
    };

    Map<String, dynamic> body3 = Map();
    body3["category_name"]= category_name;
    body3["parent_category_id"]=parent_category_id;

    print(body3);
    var response = await http.post(
        Uri.parse("http://rails.docswiz.com:9000/categories.json"),
        headers: header,
        body: json.encode(body3));
    print(response.statusCode);
    print(response.body);
    var jsondata = json.decode(response.body);
    return response;
  }


  account(int number,int balance,int user_id,String name,String account_type) async {
    print("http://rails.docswiz.com:9000/accounts.json");

    Map<String, String> header = {
      'Content-type': 'application/json',
      'Accept': 'application/json'
    };

    Map<String, dynamic> body4 = Map();
    body4["number"]= number;
    body4["balance"]= balance;
    body4["user_id"] = user_id;
    body4["name"]= name;
    body4["account_type"] = account_type;


    print(body4);
    var response = await http.post(
        Uri.parse("http://rails.docswiz.com:9000/accounts.json"),
        headers: header,
        body: json.encode(body4));
    print(response.statusCode);
    print(response.body);
    var jsondata = json.decode(response.body);
    return response;
  }



  showTransaction(dynamic mode, int user_id, int account_id, int amount, String title, String description, dynamic date_time,dynamic to_account_id) async {
    print("http://rails.docswiz.com:9000/transactions.json");

    Map<String, String> header = {
      'Content-type': 'application/json',
      'Accept': 'application/json'
    };

    Map<String, dynamic> body5 = Map();
    body5["mode"]= mode;
    body5["user_id"]= user_id;
    body5["account_id"] = account_id;
    body5["amount"]= amount;
    body5["title"] = title;
    body5["description"] = description;
    body5["date_time"] = date_time;
    body5["to_account_id"] = to_account_id;


    print(body5);
    var response = await http.post(
        Uri.parse("http://rails.docswiz.com:9000/transactions.json"),
        headers: header,
        body: json.encode(body5));
    print(response.statusCode);
    print(response.body);
    var jsondata = json.decode(response.body);
    return response;
  }
}

