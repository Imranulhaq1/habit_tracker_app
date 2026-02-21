import 'package:flutter/material.dart';

class TopLoginSignup extends StatelessWidget {
  final bool isLoginSelected;
  final Function(bool) onChanged;

  const TopLoginSignup({
    super.key,
    required this.isLoginSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isLoginSelected ? Colors.blue.shade50 : Colors.green.shade50,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          /// LOGIN
          Expanded(
            child: GestureDetector(
              onTap: () => onChanged(true),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: isLoginSelected ? Colors.blue : Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: isLoginSelected ? Colors.white : Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),

          /// SIGNUP
          Expanded(
            child: GestureDetector(
              onTap: () => onChanged(false),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: !isLoginSelected ? Colors.green : Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'Signup',
                    style: TextStyle(
                      color: !isLoginSelected ? Colors.white : Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class TopLoginSignup extends StatefulWidget {
//   const TopLoginSignup({super.key});

//   @override
//   State<TopLoginSignup> createState() => _TopLoginSignupState();
// }

// class _TopLoginSignupState extends State<TopLoginSignup> {
//   bool isLoginSelected = true;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.blue.shade50,
//         borderRadius: BorderRadius.circular(30),
//       ),
//       child: Row(
//         children: [
//           /// 🔵 LOGIN
//           Expanded(
//             child: GestureDetector(
//               onTap: () {
//                 setState(() {
//                   isLoginSelected = true;
//                 });
//               },
//               child: Container(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 9,
//                   horizontal: 10,
//                 ),
//                 decoration: BoxDecoration(
//                   color: isLoginSelected ? Colors.blue : Colors.transparent,
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: Center(
//                   child: Text(
//                     'Login',
//                     style: TextStyle(
//                       color: isLoginSelected ? Colors.white : Colors.blue,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           /// 🔵 SIGNUP
//           Expanded(
//             child: GestureDetector(
//               onTap: () {
//                 setState(() {
//                   isLoginSelected = false;
//                 });
//               },
//               child: Container(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 9,
//                   horizontal: 10,
//                 ),
//                 decoration: BoxDecoration(
//                   color: !isLoginSelected
//                       ? Colors.green
//                       : Colors.transparent,
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: Center(
//                   child: Text(
//                     'Signup',
//                     style: TextStyle(
//                       color: !isLoginSelected ? Colors.white : Colors.blue,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
