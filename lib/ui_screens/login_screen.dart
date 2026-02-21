import 'package:flutter/material.dart';
import 'package:habit_tracker_app/widgets/textfiled.dart';
import 'package:habit_tracker_app/widgets/top_login_signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoginSelected = true;
  double height() => MediaQuery.of(context).size.height;
  double width() => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Stack(
                      children: [
                        Image(
                          height: 200,
                          width: 250,
                          image: AssetImage('assets/log1.png'),
                          // height: 150,
                        ),
                      ],
                    ),
                    //SizedBox(height: 0),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              'Welcome Back!',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('Login to Continue'),
                            SizedBox(height: 10),
                            TopLoginSignup(
                              isLoginSelected: isLoginSelected,
                              onChanged: (value) {
                                setState(() {
                                  isLoginSelected = value;
                                });
                              },
                            ),
                            SizedBox(height: 20),
                            if (!isLoginSelected)
                              CustomTextField(
                                hintText: 'Username',
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.green,
                                ),
                                controller: TextEditingController(),
                                obscureText: false,
                                keyboardType: TextInputType.text,
                              ),
                            SizedBox(height: 10),

                            /// Email Field
                            CustomTextField(
                              hintText: "Email",
                              controller: TextEditingController(),
                              prefixIcon: Column(
                                children: [
                                  if (!isLoginSelected)
                                    Icon(
                                      Icons.email,
                                      color: !isLoginSelected
                                          ? Colors.blue
                                          : Colors.green,
                                    ),
                                ],
                              ),
                              obscureText: false,
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(height: 10),
                            CustomTextField(
                              hintText: "Password",
                              prefixIcon: Column(
                                children: [
                                  if (!isLoginSelected)
                                    Icon(
                                      Icons.lock,
                                      color: !isLoginSelected
                                          ? Colors.blue
                                          : Colors.green,
                                    ),
                                ],
                              ),
                              controller: TextEditingController(),
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                            ),

                            SizedBox(height: 15),

                            /// Confirm Password (Only for SignUp)
                            if (!isLoginSelected)
                              CustomTextField(
                                hintText: "Confirm Password",
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.green,
                                ),
                                controller: TextEditingController(),
                                obscureText: true,
                                keyboardType: TextInputType.visiblePassword,
                              ),
                            SizedBox(height: 15),

                            /// Button
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  isLoginSelected ? "Login" : "Sign Up",
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text('-----Forgot Password?-----'),
                            ),
                            SizedBox(height: 10),
                            Text("Don't have an account? Sign Up"),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  isLoginSelected = !isLoginSelected;
                                });
                              },
                              child: Text(
                                isLoginSelected ? "Sign Up" : "Login",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("-----Or continue with-----"),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.facebook, color: Colors.blue),
                        ),
                        SizedBox(width: 20),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search, color: Colors.red),
                        ),
                        SizedBox(width: 20),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.apple, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
