import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital ID Card',
      debugShowCheckedModeBanner: false,
      home: const IDCard(),
    );
  }
}

class IDCard extends StatelessWidget {
  const IDCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF5FF),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text(
          'Digital ID Card',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Card(
          elevation: 4,
          margin: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),

              // CircleAvatar for profile image
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/profile.png'), // Add your image
              ),

              const SizedBox(height: 10),

              // Name and department
              const Text(
                'Takia Sayma',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Batch: 61st, Department of CSE',
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 10),
              const Divider(),

              // ListTile: ID
              const ListTile(
                leading: Icon(Icons.person),
                title: Text('ID: 0182310012101094'),
              ),

              // ListTile: Email
              const ListTile(
                leading: Icon(Icons.email),
                title: Text('Email: takiasayma2002@gmail.com'),
              ),

              // ListTile: Phone
              const ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone: +8801912345678'),
              ),

              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
