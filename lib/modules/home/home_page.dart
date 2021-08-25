import 'package:firebase1/modules/login/login/login_page.dart';
import 'package:firebase1/shared/auth/auth_controller.dart';
import 'package:firebase1/shared/models/user_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final UserData user;
  // final String userEmail;
  // final String userName;
  
  HomePage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isSendingVerification = false;
  bool _isSigninOut = false;

  late UserData _currentUser;
  @override
  void initState() {
    _currentUser = widget.user;
    super.initState();
  }
  Future<void> logout() async{
      setState(() async {
       await FireAuth.logout();
       _isSigninOut = true;
       
      
       Future.delayed(Duration(seconds: 2), () {
        CircularProgressIndicator();
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          print(_currentUser);
          return LoginPage();
           
        }));
       });
                    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'NAME: ${_currentUser.name}',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 16.0),
            Text(
              'EMAIL: ${_currentUser.email}',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            
            SizedBox(height: 16.0),
            // _currentUser.emailVerified
            //     ? Text(
            //         'Email verified',
            //         style: Theme.of(context)
            //             .textTheme
            //             .bodyText1!
            //             .copyWith(color: Colors.green),
            //       )
            //     : Text(
            //         'Email not verified',
            //         style: Theme.of(context)
            //             .textTheme
            //             .bodyText1!
            //             .copyWith(color: Colors.red),
            //       ),
                  ElevatedButton(onPressed: logout, child:Text("Sair")),
                  
              // Add widgets for verifying email
              // and, signing out the user
          ],
        ),
      ) 
    );
  }
}