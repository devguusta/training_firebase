import 'package:firebase1/modules/signup/signup_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final controlleremail = TextEditingController();
  final controllerpassword = TextEditingController();
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
                  controller: controlleremail,
                  decoration: InputDecoration(
                    labelText: "Insira seu email",
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if(value!.isEmpty) {
                      return 'Preencha o email';
                    }
                    return null;
                  },
                ),
              ),
               Padding(
                padding: EdgeInsets.all(24),
                child: TextFormField(
                  controller: controllerpassword,
                  decoration: InputDecoration(
                    labelText: "Insira sua senha",
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) {
                    if(value!.isEmpty) {
                      return 'Informe sua senha';
                    } else if(value.length < 6) {
                      return 'Sua senha deve ter no mínimo 6 dígitos';
                    }
                    return null;
                  },
                ),
              ),
              TextButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                },
                child: Text("Não possui uma conta ? Cadastre-se agora"),
              ),
              ElevatedButton(
                onPressed: (){
                  
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