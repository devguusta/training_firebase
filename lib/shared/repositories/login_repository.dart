

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase1/modules/home/home_page.dart';
import 'package:firebase1/shared/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    try {
      User? user;
      final response = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = response.user;
      if (user != null) {
        UserModel userModel =
            await _db.collection('users').doc(user.uid).get().then((value) {
          return UserModel.fromMap(value.data()!);
        });
        return userModel;
      } else {
        throw Exception();
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> containsEmail(String email) async {
    try {
      final response = await FirebaseFirestore.instance
          .collection("/users")
          .where("email", isEqualTo: email)
          .get();
      return response.docs.isNotEmpty;
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel>? createAccount(
      {required String email,
      required String password,
      required name,
      required phone,
      required cpf}) async {
        try{
          User? user;
          final response = await _auth.createUserWithEmailAndPassword(email: email, password: password);
          user = response.user;
          if(user != null){
            UserModel userModel = UserModel(
              email: email, name: name,phone: phone, cpf: cpf, uid: user.uid);
              await _db.collection('users').doc(user.uid).set(userModel.toMap());
              return userModel;
          } else{
            throw Exception();
          }
        } catch (e) {
          rethrow;
        }
      }
      Future updateUser(UserModel user) async {
    try {
      await _db.collection('users').doc(user.uid).update(user.toMap());
    } catch (e) {
      throw e;
    }
  }
  // Future<void> checkEmailVerified() async {
  //   User? user;
  //   user = _auth.currentUser;
  //   await user!.reload();
  //   if(user.emailVerified){
  //    Navigator.of(context).pushReplacement(builder: (contexxt) => HomePage(user: )))
  //   }
  // }
  
  Future<User?> emailVerification() async {
  User? user;
    user!.sendEmailVerification();
  }}
