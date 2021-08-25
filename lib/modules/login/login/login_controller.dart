

import 'package:firebase1/shared/models/user_data.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase1/modules/login/login_repository.dart';
import 'package:firebase1/shared/auth/auth_controller.dart';

class LoginController {
 final LoginRepository repository;
  // User? user;
 
  LoginController({
    required this.repository,
  });
  Future<UserData?> login(
  {
    required String email,
  required String password}) async {
    try{
      UserData? user = 
      await repository.login(
        email: email,
        password: password     
        );
        return user;
             
    } catch(e) {
      throw e;
    }
    
  }
}
