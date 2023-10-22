import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/db/fierbase.istsn.dart';

class AuthService {
  signInWithEmailFirebase({
    required String email,
    required String password,
    required Function(String?) onDone,
    required Function(String e) onError,
  }) async {
    try {
      UserCredential credential =
          await FirebaseInstance.firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      onDone(credential.user?.uid);
    } on FirebaseAuthException catch (e) {
      onError(e.message.toString());
    }
  }
}
