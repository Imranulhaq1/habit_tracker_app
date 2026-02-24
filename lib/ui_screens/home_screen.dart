import 'package:flutter/material.dart';
import 'package:habit_tracker_app/utils/app_color.dart';

class HomeScreen extends StatelessWidget {
  final int completed;
  final int total;
  final double size;
  const HomeScreen({
    super.key,
    required this.completed,
    required this.total,
    this.size = 80,
  });

  @override
  Widget build(BuildContext context) {
    double percent = (completed / total) * 100;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //title: const Text('Home'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(4),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.png'),
                radius: 30,
              ),
            ),
          ],
        ),

        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  gradient: AppColor.primaryGradient,
                  // gradient: AppColor.primaryGradient,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    Container(
                      width: size,
                      height: size,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                    ),
                    Text("Hello"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
