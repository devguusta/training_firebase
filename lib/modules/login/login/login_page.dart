import 'package:firebase1/modules/home/home_page.dart';
import 'package:firebase1/modules/login/login/login_controller.dart';
import 'package:firebase1/modules/login/login_repository.dart';
import 'package:firebase1/modules/login/signup/signup_page.dart';
import 'package:firebase1/shared/auth/auth_controller.dart';
import 'package:firebase1/shared/models/user_data.dart';
import 'package:firebase1/utils/validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController controller = LoginController(repository: LoginRepository());

  final formKey = GlobalKey<FormState>();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(24),
                child: TextFormField(
                  controller: _emailTextController,
                  validator: (value) => Validator.validateEmail(value!),
                  decoration: InputDecoration(
                    labelText: "Insira seu email",
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24),
                child: TextFormField(
                  controller: _passwordTextController,
                  validator: (value) => Validator.validatePassword(value!),
                  decoration: InputDecoration(
                    labelText: "Insira sua senha",
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                },
                child: Text("Não possui uma conta ? Cadastre-se agora"),
              ),
              ElevatedButton(
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    isloading = true;
                    try {
                      UserData? user = await controller.login(
                        email: _emailTextController.text,
                        password: _passwordTextController.text,
                      );
                      if (user != null) {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => HomePage(user: user)),
                          ModalRoute.withName('/'),
                        );
                        isloading = false;
                      }
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                              'Erro ao criar conta, por favor tente novamente!')));
                    }
                  }
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
