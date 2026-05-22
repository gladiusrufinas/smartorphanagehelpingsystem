import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Orphanage Helping System',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SplashScreen(),
    );
  }
}

// SPLASH SCREEN
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.volunteer_activism, size: 100, color: Colors.orange),
            SizedBox(height: 20),
            Text(
              "Share excess, spread happiness.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 30),
            CircularProgressIndicator(),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnboardingScreen()),
                );
              },
              child: Text("Continue"),
            )
          ],
        ),
      ),
    );
  }
}

// ONBOARDING SCREEN
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
      appBar: AppBar(title: Text("Onboarding")),
      body: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite, size: 100, color: Colors.red),
                SizedBox(height: 20),
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
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text("Next"),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

// LOGIN SCREEN
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(Icons.person, size: 100),
            TextField(
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Password"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}

// HOME SCREEN
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.orange),
              child: Text("Menu", style: TextStyle(fontSize: 24)),
            ),
            ListTile(
              title: Text("Donation Form"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => DonationFormScreen()));
              },
            ),
            ListTile(
              title: Text("Orphanage Needs"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => OrphanageNeedsScreen()));
              },
            ),
            ListTile(
              title: Text("Tracking"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => TrackingScreen()));
              },
            ),
            ListTile(
              title: Text("Impact Stories"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ImpactStoriesScreen()));
              },
            ),
            ListTile(
              title: Text("Profile"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ProfileScreen()));
              },
            ),
            ListTile(
              title: Text("Admin Dashboard"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => AdminDashboard()));
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search orphanages",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                title: Text("Hope Orphanage"),
                subtitle: Text("Needs Food and Clothes"),
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

// DONATION FORM SCREEN
class DonationFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Donation Form")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            TextField(decoration: InputDecoration(labelText: "Item Name")),
            TextField(decoration: InputDecoration(labelText: "Description")),
            TextField(decoration: InputDecoration(labelText: "Quantity")),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text("Submit Donation"),
            )
          ],
        ),
      ),
    );
  }
}

// ORPHANAGE NEEDS SCREEN
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
                child: Text("Donate"),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// TRACKING SCREEN
class TrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tracking")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Donation Status: Picked Up"),
            SizedBox(height: 20),
            Container(
              height: 200,
              width: 300,
              color: Colors.grey[300],
              child: Center(child: Text("Map Integration")),
            )
          ],
        ),
      ),
    );
  }
}

// IMPACT STORIES SCREEN
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
                Image.network("https://via.placeholder.com/300"),
                ListTile(
                  title: Text("Helping Children"),
                  subtitle: Text("Your donation changed lives."),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// PROFILE SCREEN
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(radius: 40, child: Icon(Icons.person)),
            SizedBox(height: 20),
            Text("Name: User"),
            Text("Email: user@gmail.com"),
            Text("Phone: 9876543210"),
          ],
        ),
      ),
    );
  }
}

// ADMIN DASHBOARD SCREEN
class AdminDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Admin Dashboard")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("Manage Users"),
                leading: Icon(Icons.people),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Approve Requests"),
                leading: Icon(Icons.check_circle),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Analytics"),
                leading: Icon(Icons.bar_chart),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
