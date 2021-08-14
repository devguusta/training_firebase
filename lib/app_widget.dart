
import 'package:flutter/material.dart';

import 'modules/login/login/login_page.dart';
import 'modules/login/signup/signup_page.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/login",
       routes: {
        // "/splash": (_) => SplashPage(),
        "/login": (_) => LoginPage(),
        "/signup": (_) => SignUpPage()
      },
    );
  }
}