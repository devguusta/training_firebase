import 'dart:convert';

import 'package:firebase1/shared/models/user_model.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'auth_manager.g.dart';

class UserManager = _UserManagerBase with _$UserManager;

abstract class _UserManagerBase with Store {

  @observable
  UserModel? user;

  @observable
  bool initialAccess = false;

  @observable
  bool? isLoggedIn;

  @action
  void setUser(UserModel? value) => user = value;

  @action
  Future<void> init() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userString = prefs.getString('user');

    if(userString != null){
      setUser(UserModel.fromJson(json.decode(userString)));
      isLoggedIn = true;
    } else {
      isLoggedIn = false;
    }
  }
  
}