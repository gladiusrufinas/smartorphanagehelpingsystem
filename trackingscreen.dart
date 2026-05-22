import 'package:flutter/material.dart';

class TrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Track Donation")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("Food Donation"),
                subtitle: Text("Status: Picked Up"),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              color: Colors.grey[300],
              child: Center(
                child: Text("Map Integration Here"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
