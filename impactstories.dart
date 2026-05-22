import 'package:flutter/material.dart';

class ImpactStoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Impact Stories")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Card(
            child: Column(
              children: [
                Image.network(
                  'https://via.placeholder.com/300',
                ),
                ListTile(
                  title: Text("Helping Children"),
                  subtitle: Text("Your donations changed lives."),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
