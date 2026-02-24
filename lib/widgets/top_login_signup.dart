import 'package:flutter/material.dart';

class TopLoginSignup extends StatelessWidget {
  final bool isLoginSelected;
  final Function(bool) onChanged;

  const TopLoginSignup({
    super.key,
    required this.isLoginSelected,
    required this.onChanged,
    required int elevation,
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

          /// signup button
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
