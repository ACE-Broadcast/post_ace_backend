import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import '../models/user_model.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;
  // final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<User?> createUserWithEmailId(String email, String password) async {
    try {
      final cred = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return cred.user;
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<User?> loginUserWithEmailId(String email, String password) async {
    try {
      final cred = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return cred.user;
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<User?> signOut() async{
    try{
       await _auth.signOut();
    } catch (e) {
      print(e);
    }
  }

  // // Get current user data
  // UserModel? get currentUser {
  //   final user = _auth.currentUser;
  //   if (user != null) {
  //     return UserModel(
  //       uid: user.uid,
  //       email: user.email ?? '',
  //       name: user.displayName ?? '',
  //       photoURL: user.photoURL,
  //     );
  //   }
  //   return null;
  // }

  // // Sign in with Google
  // Future<UserModel?> signInWithGoogle() async {
  //   try {
  //     final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
  //     if (googleUser == null) return null;

  //     final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
  //     final credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth.accessToken,
  //       idToken: googleAuth.idToken,
  //     );

  //     final UserCredential userCredential =
  //         await _auth.signInWithCredential(credential);
  //     final user = userCredential.user;

  //     if (user != null) {
  //       return UserModel(
  //         uid: user.uid,
  //         email: user.email ?? '',
  //         name: user.displayName ?? '',
  //         photoURL: user.photoURL,
  //       );
  //     }
  //   } catch (e) {
  //     print('Error signing in with Google: $e');
  //   }
  //   return null;
  // }
}
