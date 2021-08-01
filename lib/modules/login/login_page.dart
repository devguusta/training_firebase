import 'package:firebase1/modules/home/home_page.dart';
import 'package:firebase1/modules/signup/signup_page.dart';
import 'package:firebase1/shared/auth/auth_controller.dart';
import 'package:firebase1/utils/validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
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
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                },
                child: Text("Não possui uma conta ? Cadastre-se agora"),
              ),
              ElevatedButton(
               onPressed: () async {
          if (formKey.currentState!.validate()) {
            User? user = await FireAuth.signInUsingEmailPassword(
              email: _emailTextController.text,
              password: _passwordTextController.text,
              context: context,
            );
            if (user != null) {
              Navigator.of(context)
                  .pushReplacement(
                MaterialPageRoute(builder: (context) => HomePage(user: user)),
              );
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