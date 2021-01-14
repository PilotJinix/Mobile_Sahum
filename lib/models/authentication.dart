import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';


class Authentication with ChangeNotifier{

  Future<void> signUp (String email, String password) async{

    const url ="https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyADbp0kydLC0MCDFEItbn4Hdj57Wl1fmwo";

    final response = await http.post(url, body: json.encode(
        {
          "email" : email,
          "password" : password,
          "returnSecureToken" : true,
        }
    ));
    final responseData = json.decode(response.body);
    print(responseData);
  }

  Future<void> logIn(String email, String password) async{

    const url ="https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyADbp0kydLC0MCDFEItbn4Hdj57Wl1fmwo";

    final response = await http.post(url, body: json.encode(
        {
          "email" : email,
          "password" : password,
          "returnSecureToken" : true,
        }
    ));
    final responseData = json.decode(response.body);
    print(responseData);
  }
}