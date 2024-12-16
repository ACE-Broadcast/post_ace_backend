import 'package:flutter/material.dart';
import 'package:post_ace/screens/signup_screen.dart';
import 'home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/painting.dart';
// TODO: Remove this import when Firebase is setup
// import 'package:atharva_coe/services/auth_service.dart';

<<<<<<< HEAD:lib/screens/login_screen.dart
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
=======
class LoginScreenAdmin extends StatelessWidget {
  const LoginScreenAdmin({super.key});
>>>>>>> ab3d733aaf3828d77637769ca53a36b97ed7112a:lib/screens/login_screen_admin.dart

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Firebase Auth setup
    // 1. Initialize Firebase Auth
    // 2. Implement email validation for @atharvacoe.ac.in
    // 3. Setup Google Sign In for admin authentication

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                const Text(
                  'WELCOME',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Login illustration
                SvgPicture.asset(
                  'assets/illustrations/login_prof_illus.svg',
                  height: 200,
                ),
                const SizedBox(height: 40),
                TextField(
                  controller: _email,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        'assets/icons/lock.svg',
                        colorFilter: const ColorFilter.mode(
                          Colors.black,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    hintText: 'E-Mail',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _password,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        'assets/icons/key.svg',
                        colorFilter: const ColorFilter.mode(
                          Colors.black,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: 180,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Implement email validation
                      // if (email.endsWith('@atharvacoe.ac.in')) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
<<<<<<< HEAD:lib/screens/login_screen.dart
                          builder: (context) =>
                              const HomeScreen(isAdmin: false),
=======
                          builder: (context) => const HomeScreen(isAdmin: true),
>>>>>>> ab3d733aaf3828d77637769ca53a36b97ed7112a:lib/screens/login_screen_admin.dart
                        ),
                      );
                      // }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6C63FF),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text('Login'),
                  ),
                ),
                SizedBox(
                  width: 180,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Implement email validation
                      // if (email.endsWith('@atharvacoe.ac.in')) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const SignIn(),
                        ),
                      );
                      // }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6C63FF),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text('create account'),
                  ),
                ),
                const SizedBox(height: 26),
                SizedBox(
                  width: 250,
                  height: 50,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      // TODO: Implement Firebase Google Sign In
                      // For now, just navigate to admin screen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(isAdmin: true),
                        ),
                      );

                      // TODO: Uncomment this when Firebase is setup
                      // final authService = AuthService();
                      // final user = await authService.signInWithGoogle();
                      // if (user != null && context.mounted) {
                      //   if (user.email.endsWith('@admin.atharvacoe.ac.in')) {
                      //     Navigator.pushReplacement(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => const AdminHomeScreen(),
                      //       ),
                      //     );
                      //   } else if (user.email.endsWith('@atharvacoe.ac.in')) {
                      //     Navigator.pushReplacement(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => const StudentHomeScreen(),
                      //       ),
                      //     );
                      //   } else {
                      //     ScaffoldMessenger.of(context).showSnackBar(
                      //       const SnackBar(
                      //         content: Text('Please use your college email address'),
                      //       ),
                      //     );
                      //     await authService.signOut();
                      //   }
                      // }
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    icon: SvgPicture.asset(
                      'assets/icons/google_logo.svg',
                      height: 24,
                    ),
                    label: const Text('Sign-in with Google'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}