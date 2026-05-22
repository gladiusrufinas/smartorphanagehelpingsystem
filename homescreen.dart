import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome User")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search orphanages or donation requests",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Chip(label: Text("Food")),
                Chip(label: Text("Clothes")),
                Chip(label: Text("Books")),
              ],
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                title: Text("Hope Orphanage"),
                subtitle: Text("Needs food and clothes"),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text("Donate"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
