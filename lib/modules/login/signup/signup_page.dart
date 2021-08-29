import 'package:firebase1/modules/home/home_page.dart';
import 'package:firebase1/modules/login/login/login_controller.dart';
import 'package:firebase1/modules/login/login/login_page.dart';
import 'package:firebase1/modules/login/login_repository.dart';
import 'package:firebase1/modules/login/signup/components/header_components.dart';
import 'package:firebase1/modules/login/signup/components/pageview/pageview_one.dart';
import 'package:firebase1/modules/login/signup/components/signup_footer.dart';
import 'package:firebase1/modules/login/signup/signup_manager.dart';
import 'package:firebase1/shared/auth/auth_controller.dart';
import 'package:firebase1/shared/models/user_data.dart';
import 'package:firebase1/shared/widgets/input_form_widget.dart';
import 'package:firebase1/utils/validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SignUpPage extends StatefulWidget {
  static const String id = '/sign-up';
  SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final controller = SignUpManager();
  final formKey = GlobalKey<FormState>();
  final _nameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _cpfTextController = TextEditingController();
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
          : SafeArea(
              child: Observer(builder: (_) {
                return Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Expanded(
                        child: PageView(
                          scrollDirection: Axis.horizontal,
                          physics: NeverScrollableScrollPhysics(),
                          pageSnapping: true,
                          onPageChanged: (index) {
                            controller.pageChanged = index;
                          },
                          controller: controller.pageController,
                          children: [
                          Stack(
                            children: [
                                PageViewOne(emailController: _emailTextController, nameController: _nameTextController),
                               Align(
                                 alignment: Alignment.bottomCenter,
                                 child: SignUpFooter(
                                   onNext: (){
                                     FocusScope.of(context).unfocus();
                                     if(formKey.currentState!.validate()){
                                       controller.nextPage();
                                     }
                                   },
                                   onBack: (){
                                     Navigator.pushNamed(context,'/login');
                                   },
                                   ),
                               ),
                            ] 
                            
                            
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
    );
  }
}
