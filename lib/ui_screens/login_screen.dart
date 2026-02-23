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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70), // half logo height
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            /// SPACE FOR LOGO (IMPORTANT)
                            const SizedBox(height: 80),

                            const Text(
                              'Welcome Back!',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const Text('Login to Continue'),

                            const SizedBox(height: 10),

                            TopLoginSignup(
                              isLoginSelected: isLoginSelected,
                              onChanged: (value) {
                                setState(() {
                                  isLoginSelected = value;
                                });
                              },
                            ),

                            const SizedBox(height: 20),

                            if (!isLoginSelected)
                              CustomTextField(
                                hintText: 'Username',
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: Colors.green,
                                ),
                                controller: TextEditingController(),
                                obscureText: false,
                                keyboardType: TextInputType.text,
                              ),

                            const SizedBox(height: 10),

                            /// Email
                            CustomTextField(
                              hintText: "Email",
                              controller: TextEditingController(),
                              prefixIcon: Icon(
                                Icons.email,
                                color: isLoginSelected
                                    ? Colors.blue
                                    : Colors.green,
                              ),
                              obscureText: false,
                              keyboardType: TextInputType.emailAddress,
                            ),

                            const SizedBox(height: 10),

                            /// Password
                            CustomTextField(
                              hintText: "Password",
                              controller: TextEditingController(),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: isLoginSelected
                                    ? Colors.blue
                                    : Colors.green,
                              ),
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                            ),

                            const SizedBox(height: 15),

                            /// Confirm Password
                            if (!isLoginSelected)
                              CustomTextField(
                                hintText: "Confirm Password",
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.green,
                                ),
                                controller: TextEditingController(),
                                obscureText: true,
                                keyboardType: TextInputType.visiblePassword,
                              ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 0,
                                horizontal: 40,
                              ),
                              child: TextButton(
                                onPressed: () {},

                                child: Text(
                                  isLoginSelected ? 'Forgot Password?' : '',
                                ),
                              ),
                            ),
                            //const SizedBox(height: 10),

                            /// Button
                            SizedBox(
                              width: double.infinity,
                              child: ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return const LinearGradient(
                                    colors: [
                                      Color.fromARGB(255, 27, 20, 231),
                                      Color.fromARGB(255, 48, 134, 204),
                                      Color.fromARGB(255, 36, 220, 220),
                                      Color.fromARGB(255, 18, 201, 45),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ).createShader(bounds);
                                },
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    // backgroundColor: const Color.fromARGB(
                                    //   255,
                                    //   166,
                                    //   210,
                                    //   246,
                                    // ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    isLoginSelected ? "Login" : "Sign Up",
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('_________Or Continue With_________'),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 40,

                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    //shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 5,
                                        offset: const Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.facebook, color: Colors.black),
                                      SizedBox(width: 5),
                                      Text(
                                        'Facebook',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Container(
                                  height: 40,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    //shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 5,
                                        offset: const Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.linked_camera_rounded,
                                        color: Colors.black,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'Google',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  isLoginSelected
                                      ? "Don't have an account?"
                                      : "I already have account",
                                ),
                                TextButton(
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
                            Image(image: AssetImage('assets/log4.png')),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                top: 0,
                child: Container(
                  height: 200,
                  width: 250,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: Colors.black26,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Image.asset('assets/log1.png', fit: BoxFit.contain),
                  ),
                ),
              ),
            ],
          ),
        ),
        // ),
      ),
    );
  }
}
