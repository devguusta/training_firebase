import 'package:firebase1/modules/home/home_page.dart';
import 'package:firebase1/modules/login/login/login_controller.dart';
import 'package:firebase1/modules/login/login/login_page.dart';
import 'package:firebase1/modules/login/login_repository.dart';
import 'package:firebase1/modules/login/signup/signup_controller.dart';
import 'package:firebase1/shared/auth/auth_controller.dart';
import 'package:firebase1/shared/models/user_data.dart';
import 'package:firebase1/utils/validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  SignUpController controller = SignUpController(repository: LoginRepository());
  final formKey = GlobalKey<FormState>();
  final _nameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _phoneTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  PageController pageController = PageController();

  int pageChanged = 0;
  bool isloading = false;
  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
      keepPage: true,
      viewportFraction: 1,
    );
    super.initState();
  }

  @override
  void dispose() {
    _nameTextController.dispose();
    _emailTextController.dispose();
    _passwordTextController.dispose();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isloading
          ? Center(child: CircularProgressIndicator())
          : Form(
              key: formKey,
              child: Column(
                children: [
                  Expanded(
                    child: PageView(
                      physics: NeverScrollableScrollPhysics(),
                      pageSnapping: true,
                      onPageChanged: (index) {
                        setState(() {
                          pageChanged = index;
                        });
                      },
                      controller: pageController,
                      children: [
                        Container(
                          color: Colors.orange,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _nameTextController,
                                decoration: InputDecoration(
                                  labelText: "Insira seu nome",
                                ),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) =>
                                    Validator.validateName(value!),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    pageController.nextPage(
                                      duration: Duration(microseconds: 400),
                                      curve: Curves.easeIn,
                                    );
                                  }
                                },
                                child: Text("Next"),
                              )
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _emailTextController,
                                decoration: InputDecoration(
                                  labelText: "Insira seu email",
                                ),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) =>
                                    Validator.validateEmail(value!),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    pageController.nextPage(
                                      duration: Duration(microseconds: 400),
                                      curve: Curves.easeIn,
                                    );
                                  }
                                },
                                child: Text("Next"),
                              )
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.blueGrey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _passwordTextController,
                                validator: (value) =>
                                    Validator.validatePassword(value!),
                                decoration: InputDecoration(
                                  labelText: "Insira sua senha",
                                ),
                                keyboardType: TextInputType.visiblePassword,
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  if (formKey.currentState!.validate()) {
                                    isloading = true;
                                    try {
                                      UserData? user = (await controller.register(
                                        name: _nameTextController.text,
                                        email: _emailTextController.text,
                                        password: _passwordTextController.text,
                                      )) as UserData?;
                                      if (user != null) {
                                        Navigator.of(context)
                                            .pushAndRemoveUntil(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePage(user: user)),
                                          ModalRoute.withName('/'),
                                        );
                                        isloading = false;
                                      }
                                    } catch (e) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content: Text(
                                                  'Erro ao criar conta, por favor tente novamente!')));
                                    }
                                  }
                                },
                                child: Text("Registrar"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
