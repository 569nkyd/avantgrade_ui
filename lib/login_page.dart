import 'package:avantgrade_ui/components/my-button.dart';
import 'package:avantgrade_ui/components/my_textfield.dart';
import 'package:avantgrade_ui/components/square_tile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:  SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               SizedBox(height:50),

              Icon(Icons.lock,size: 100),

             const SizedBox(height:50),

              Text('Welcome back you\'ve been missed!',
              style: TextStyle(
                  color: Colors.black87,
                fontSize: 16,
              ),
              ),

              const SizedBox(height:25),

            MyTextField(
                controller: usernameController,
                hinText: 'Username',
                obscureText: false ),

              

              const SizedBox(height: 10),
              
            MyTextField(
                controller: passwordController,
                hinText: 'Password',
                obscureText: true,
            ),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                      thickness: 0.5,
                    color: Colors.grey,
                    ),
        ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('or continue with',
                      style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    ),
        ],
                ),
              ),

              const SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  SquareTile(imagePath: 'lib/images/google.png'),
                  
                  const SizedBox(width: 25),

                  SquareTile(imagePath: 'lib/images/apple.png')

                ],
              ),
              const SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('Not a member?',
                  style: TextStyle(color: Colors.grey[700]),
        ),
                const SizedBox(width: 4),

               const Text(
                  'Register now',
                style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                ),

              ],)




            ],),
        ),
      ),

    );
  }
}
