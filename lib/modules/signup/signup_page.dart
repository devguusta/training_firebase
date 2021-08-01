import 'package:firebase1/modules/home/home_page.dart';
import 'package:firebase1/modules/login/login_page.dart';
import 'package:firebase1/shared/auth/auth_controller.dart';
import 'package:firebase1/utils/validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  final _nameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _phoneTextController = TextEditingController();
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
                  controller: _nameTextController,
                  decoration: InputDecoration(
                    labelText: "Insira seu nome",
                  ),
                  keyboardType: TextInputType.emailAddress,
                   validator: (value) => Validator.validateName(value!),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24),
                child: TextFormField(
                  controller: _emailTextController,
                  decoration: InputDecoration(
                    labelText: "Insira seu email",
                  ),
                  keyboardType: TextInputType.emailAddress,
                   validator: (value) => Validator.validateEmail(value!),
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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text("Já possui uma conta? Entre agora"),
              ),
              ElevatedButton(
                onPressed: () async{
                  if(formKey.currentState!.validate()) {
                    User? user = await FireAuth.register(
                      name: _nameTextController.text,
                      email: _emailTextController.text,
                     
                      password: _passwordTextController.text,
                    );
                    if(user != null) {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => 
                        HomePage(user: user),
                        ),
                        ModalRoute.withName('/'),
                        );
                    }
                  }
                },
                child: Text("Registrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}