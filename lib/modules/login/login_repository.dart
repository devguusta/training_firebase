import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase1/shared/models/user_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';


class LoginRepository {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _db = FirebaseFirestore.instance;
  User? user;

  Future<UserData?> login({
    required String email,
    required String password,
    // required BuildContext context,
  }) async {
    try {
      final response = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      user = response.user;
      if(user!=null){
      return await _db.collection('users').doc(user!.uid).get().then((value){
         return UserData.fromMap(value.data()!);
       });
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided.');
      }
    }

  }

  Future<User?> register({
    required String name,
    required String email,
    required String password,
  }) async {
   
   
    try {
      final response = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      user = response.user;
      await user!.updateDisplayName(name);

      await user!.reload();
      user = _auth.currentUser;
      await _db 
          .collection("/users")
          .doc(user!.uid)
          .set({"email": user!.email, "name": user!.displayName});
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    return user;
  }
}


  Future<User?> logout() async {
   
    await FirebaseAuth.instance.signOut();
  }

  Future<User?> emailVerification() async {
   
    User? user;
    user!.sendEmailVerification();
  }

  Future<User?> refreshUser(User user) async {
    FirebaseAuth auth = FirebaseAuth.instance;

    await user.reload();
    User? refreshedUser = auth.currentUser;

    return refreshedUser;
  }

  