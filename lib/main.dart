import 'package:firebase1/firebase_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'shared/auth/auth_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => AuthService())
    ],
    child: FirebaseWidget(),
  ),
  );
}

