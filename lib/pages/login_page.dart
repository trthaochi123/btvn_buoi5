import 'package:flutter/material.dart';
import '../components/my_textfield.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

void _submitButton() {
  if (_formKey.currentState!.validate()) {
    ScaffoldMessenger.of(_formKey.currentContext!).showSnackBar(
      const SnackBar(
          content: Text(
              "Đăng nhập thành công !",
            style: TextStyle(color: Colors.green,
            fontSize: 20,
            ),
          ))
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children:  [
                const SizedBox(height: 50,),

                // logo
                const Text("TutorialKarl",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 35,
                  fontWeight: FontWeight.w600
                ),
                ),

                const SizedBox(height: 30,),

                // welcome back, you've been missed!
                Text(
                  'Sign in',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 35,),

                // username
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                const SizedBox(height: 10,),

                // password
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10,),

                // forgot
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Forgot Password ?',
                        style: TextStyle(color: Colors.blue,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),


            // Button
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _submitButton,
                    child: Text("Login"),
                  ),
                ),

                const SizedBox(height: 50),


                // or continued
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded( // dong ke
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

                const SizedBox(height: 50),

                // google or apple
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: const [
                //     // google
                //     SquareTile(imagePath: 'lib/images/google.png'),
                //
                //     SizedBox(width: 25,),
                //
                //     // apple
                //     SquareTile(imagePath: 'lib/images/apple.png'),
                //   ],
                // ),
                //
                // const SizedBox(height: 50),

                // not a member ?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Does not have account?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4,),
                    const Text('Sign In',
                      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,
                              fontSize: 20,
                      ),
                    ),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }

}