import 'package:flutter/material.dart';
import 'package:habit_tracker_app/ui_screens/home_screen.dart';
import 'package:habit_tracker_app/utils/app_color.dart';
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
        child: SingleChildScrollView(
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

                              Text(
                                isLoginSelected
                                    ? 'Welcome Back!'
                                    : "Create Account",
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              Text(
                                isLoginSelected
                                    ? 'Login to Continue'
                                    : "Start your habit journey",
                              ),

                              const SizedBox(height: 10),

                              TopLoginSignup(
                                elevation: 5,
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
                                  elevation: 2,
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
                                elevation: 2,
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
                                elevation: 2,
                                controller: TextEditingController(),
                                suffixIcon: Icon(Icons.visibility),
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
                                  elevation: 2,
                                  suffixIcon: Icon(Icons.visibility),
                                  prefixIcon: const Icon(
                                    Icons.lock,
                                    color: Colors.green,
                                  ),
                                  controller: TextEditingController(),
                                  obscureText: true,
                                  keyboardType: TextInputType.visiblePassword,
                                ),
                              if (!isLoginSelected) SizedBox(height: 20),
                              if (isLoginSelected)
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 0,
                                    horizontal: 0,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: TextButton(
                                      onPressed: () {},

                                      child: Text(
                                        'Forgot Password?',
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                ),

                              SizedBox(
                                width: double.infinity,

                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: AppColor.primaryGradient,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      //backgroundColor: AppColor.,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HomeScreen(
                                            completed: 2,
                                            total: 5,
                                          ),
                                        ),
                                      );
                                    },

                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          isLoginSelected ? "Login" : "Sign Up",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 100),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                            horizontal: 10,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(
                                              0.3,
                                            ),
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                  0.3,
                                                ),
                                                blurRadius: 10,
                                                offset: const Offset(0, 4),
                                              ),
                                            ],
                                          ),
                                          child: Icon(
                                            Icons.chevron_right,
                                            size: 25,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text('_________Or Continue With_________'),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                                        Icon(
                                          Icons.facebook,
                                          color: Colors.blue,
                                        ),
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
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.blue,
                                      ),
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
                    height: 180,
                    width: 200,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 100,
                          color: Color.fromARGB(255, 167, 202, 84),
                          offset: Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset(
                        'assets/log1.png',
                        fit: BoxFit.contain,
                      ),
                    ),
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
