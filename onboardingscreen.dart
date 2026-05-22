import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  final List<Map<String, String>> pages = [
    {
      "title": "Donate Easily",
      "text": "Share your excess food or clothes with those in need.",
    },
    {
      "title": "Track Donations",
      "text": "Monitor the status of your donations in real-time.",
    },
    {
      "title": "Join the Community",
      "text": "Be a part of a global movement to help others.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite, size: 120, color: Colors.red),
                SizedBox(height: 30),
                Text(
                  pages[index]['title']!,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  pages[index]['text']!,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
