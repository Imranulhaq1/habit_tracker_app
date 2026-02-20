import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoginSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),

                Text(
                  'Welcome Back!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 30),

                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        /// Toggle Buttons
                        ToggleButtons(
                          borderRadius: BorderRadius.circular(12),
                          isSelected: [isLoginSelected, !isLoginSelected],
                          onPressed: (index) {
                            setState(() {
                              isLoginSelected = index == 0;
                            });
                          },
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text('Login'),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text('Sign Up'),
                            ),
                          ],
                        ),

                        SizedBox(height: 20),

                        /// Email Field
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            border: OutlineInputBorder(),
                          ),
                        ),

                        SizedBox(height: 15),

                        /// Password Field
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            border: OutlineInputBorder(),
                          ),
                        ),

                        SizedBox(height: 15),

                        /// Confirm Password (Only for SignUp)
                        if (!isLoginSelected)
                          Column(
                            children: [
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: "Confirm Password",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              SizedBox(height: 15),
                            ],
                          ),

                        /// Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(isLoginSelected ? "Login" : "Sign Up"),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('-----Forgot Password?-----'),
                        ),
                        SizedBox(height: 10),
                        Text("Don't have an account? Sign Up"),
                        SizedBox(height: 10),
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
          ),
        ),
      ),
    );
  }
}
