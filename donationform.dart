import 'package:flutter/material.dart';

class DonationFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Donation Form")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Item Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Description'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Quantity'),
            ),
            DropdownButtonFormField(
              items: [
                DropdownMenuItem(value: 'Food', child: Text('Food')),
                DropdownMenuItem(value: 'Clothes', child: Text('Clothes')),
                DropdownMenuItem(value: 'Others', child: Text('Others')),
              ],
              onChanged: (value) {},
              decoration: InputDecoration(labelText: 'Category'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text("Submit Donation"),
            ),
          ],
        ),
      ),
    );
  }
}
