

import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase1/modules/login/login_repository.dart';
import 'package:firebase1/shared/auth/auth_controller.dart';

class LoginController {
 final LoginRepository repository;
  User? user;
 
  LoginController({
    required this.repository,
  });
  Future<User?> login(
  {
    required String email,
  required String password}) async {
    try{
      user = 
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
