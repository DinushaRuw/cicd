 import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Light Background
      appBar: AppBar(
        title: Text("Dashboard", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle, size: 32), // Profile Icon
            onPressed: () {
              // Handle Profile Click
            },
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Text
            Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "What would you like to do today?",
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            SizedBox(height: 20),

            // Grid Layout for Features
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildDashboardTile(Icons.calendar_today, "Appointments", context),
                  _buildDashboardTile(Icons.chat, "Messages", context),
                  _buildDashboardTile(Icons.notifications, "Notifications", context),
                  _buildDashboardTile(Icons.person, "Profile", context),
                  _buildDashboardTile(Icons.settings, "Settings", context),
                  _buildDashboardTile(Icons.exit_to_app, "Logout", context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper Widget for Dashboard Items
  Widget _buildDashboardTile(IconData icon, String title, BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (title == "Appointments") {
          Navigator.pushNamed(context, '/appointment'); // Navigate to Appointments
        } else if (title == "Logout") {
          Navigator.pushReplacementNamed(context, '/login'); // Logout action
        }
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.deepPurple),
            SizedBox(height: 10),
            Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
