import 'package:flutter/material.dart';

class AppointmentPage extends StatefulWidget {
  @override
  _AppointmentPageState createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  List<Map<String, String>> appointments = [
    {"name": "Dr. Rathnayake", "specialty": "Cognitive Behavioral Therapy"},
    {"name": "Dr. Inokea", "specialty": "Psychiatrist"},
    {"name": "Dr. Johnson", "specialty": "Counseling Psychologist"},
    {"name": "Dr. Williams", "specialty": "Cardiology Specialist"},
  ];

  void _addAppointment() {
    setState(() {
      appointments.add({
        "name": "Dr. New Doctor",
        "specialty": "New Specialty"
      });
    });
  }

  void _deleteLastAppointment() {
    if (appointments.isNotEmpty) {
      setState(() {
        appointments.removeLast();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Appointments"),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle, size: 30),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search Counseling...",
                  border: InputBorder.none,
                  icon: Icon(Icons.search, color: Colors.deepPurple),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Categories
            Text("Categories", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildCategory(Icons.favorite, "Heart"),
                _buildCategory(Icons.psychology, "Therapy"),
                _buildCategory(Icons.local_hospital, "General"),
              ],
            ),
            SizedBox(height: 20),

            // Buttons for Insert and Delete
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  icon: Icon(Icons.add),
                  label: Text("Add"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: _addAppointment,
                ),
                ElevatedButton.icon(
                  icon: Icon(Icons.delete),
                  label: Text("Delete"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: _deleteLastAppointment,
                ),
              ],
            ),
            SizedBox(height: 20),

            // Specialist List
            Expanded(
              child: ListView.builder(
                itemCount: appointments.length,
                itemBuilder: (context, index) {
                  final doctor = appointments[index];
                  return _buildDoctorCard(doctor['name']!, doctor['specialty']!);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.deepPurple.withOpacity(0.2),
          child: Icon(icon, size: 30, color: Colors.deepPurple),
        ),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }

  Widget _buildDoctorCard(String name, String specialty) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.deepPurple.withOpacity(0.2),
          child: Icon(Icons.person, color: Colors.deepPurple),
        ),
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(specialty),
        trailing: IconButton(
          icon: Icon(Icons.call, color: Colors.deepPurple),
          onPressed: () {},
        ),
      ),
    );
  }
}
