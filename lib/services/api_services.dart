import 'dart:async';
import 'dart:convert';
import 'package:grahnumb_assignment/services/user_data_model/user_data_model.dart';
import 'package:http/http.dart' as http;

class ApiManager {
  Future<UserDataModel> getUserData() async {
    final response = await http.get(Uri.parse(
        "https://techcrunch.com/wp-json/wp/v2/posts?per_page=2&page=1"));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      print(data);
      return UserDataModel.fromJson(data);
    } else {
      print("In the Else section of code200");
      return UserDataModel.fromJson(data);
    }
  }
}
