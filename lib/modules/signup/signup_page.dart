import 'package:firebase1/modules/login/login_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text("Já possui uma conta? Entre agora"),
              ),
              ElevatedButton(
                onPressed: (){},
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}