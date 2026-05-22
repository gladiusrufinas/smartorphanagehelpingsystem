import 'package:flutter/material.dart';

class OrphanageNeedsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Orphanage Needs")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              title: Text("Rice - 10kg"),
              subtitle: Text("Needed urgently"),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text("Donate Now"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
