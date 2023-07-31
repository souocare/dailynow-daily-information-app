import 'package:dailynow_app/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:dailynow_app/components/signin_button.dart';
import 'package:dailynow_app/components/autologins.dart';
import 'package:dailynow_app/components/textinputarea.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTapChangePage;
  LoginPage({super.key, required this.onTapChangePage});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);
      // WRONG EMAIL
      if (e.code == 'user-not-found') {
        // show error to user
        showErrorMessage('Incorrect Email');
      }

      // WRONG PASSWORD
      else if (e.code == 'wrong-password') {
        // show error to user
        showErrorMessage('Incorrect Password');
      }
    }
  }

  // wrong message to user
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.perm_identity, // Replace with the desired icon
                    size: 22,
                    color: Colors.black,
                  ),
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Welcome back! We missed you.',
                      style: TextStyle(
                        color: Color(0xFF5B5B5B),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // logo
              Image.asset('assets/logoapp.png', height: 130),

              const SizedBox(height: 30),

              // welcome back, you've been missed!
              Text(
                'Please, enter your login details below',
                style: TextStyle(
                  color: Color(0xFFF2796B),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 25),

              SizedBox(
                height:
                    50, // Set the height of the SizedBox to 40 logical pixels
                child: TextInputArea(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),
              ),

              const SizedBox(height: 10),

              SizedBox(
                height:
                    50, // Set the height of the SizedBox to 40 logical pixels
                child: TextInputArea(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
              ),

              const SizedBox(height: 10),

              // // forgot password?
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Text(
              //         'Forgot Password?',
              //         style: TextStyle(color: Colors.grey[600]),
              //       ),
              //     ],
              //   ),
              // ),

              const SizedBox(height: 25),

              // sign in button
              SignInUp(
                onTap: signUserIn,
                text: 'Sign In',
              ),

              const SizedBox(height: 30),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google button
                  AutoLoginsSquares(
                    imagePath: 'assets/logins/google.png',
                    onTap: () => AuthService().signinwithGoogle(context),
                  ),

                  SizedBox(width: 25),

                  // apple button
                  AutoLoginsSquares(
                    imagePath: 'assets/logins/apple.png',
                    onTap: () => AuthService().signinwithGoogle(context),
                  )
                ],
              ),

              const SizedBox(height: 30),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTapChangePage,
                    child: const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // enter as guest
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     GestureDetector(
              //       onTap: widget.onTapChangePage,
              //       child: Text(
              //         'Click here to enter as guest',
              //         style: TextStyle(
              //             color: Colors.grey[700], fontWeight: FontWeight.bold),
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
