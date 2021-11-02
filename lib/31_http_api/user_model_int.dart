import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  int id;
  String name;

  User({this.id, this.name});

  factory User.createUser(Map<String, dynamic> object) {
    return User(
      // id: object['id'].toString(),
      id: object['id'],
      name: object['first_name'] + ' ' + object['last_name'],
    );
  }

  static Future<User> connectToAPI(int id) async {
    String apiURL = "https://reqres.in/api/users/"+id.toString();

    var apiResult = await http.get(apiURL);

    var jsonObject = json.decode(apiResult.body);

    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return User.createUser(userData);
  }
}
