import 'package:firebase1/modules/login/login_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpController {

  final LoginRepository repository;
  User? user;
  SignUpController({
    required this.repository,
  });

  Future<User?> register(
    {required String name, required String email, required String password}) 
    async {
      try{
        user =  await repository.register(name: name, email: email, password: password);
        return user;
      } catch(e){
        throw e;
      }
    }

}
