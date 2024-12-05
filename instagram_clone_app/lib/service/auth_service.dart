import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signUpUser(
      {required String email,
      required String password,
      required String username,
      required String bio}) async {
    String res = "error";
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          username.isNotEmpty ||
          bio.isNotEmpty) {
        UserCredential cUser = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        await _firestore.collection('users').doc(cUser.user!.uid).set({
          "username": username,
          "email": email,
          "bio": bio,
          "followers": [],
          "following": [],
        });
        print(cUser.user!.uid);
        res = "Sucess";
      }
    } catch (e) {
      res = e.toString();
    }
    return res;
  }
}
