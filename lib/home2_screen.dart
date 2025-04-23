import 'package:flutter/material.dart';
import 'login2_screen.dart';

class HomeScreen extends StatefulWidget {
  final String email;

  const HomeScreen({super.key, required this.email});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color backgroundColor = Colors.white;

  void changeBackgroundColor(Color color) {
    setState(() {
      backgroundColor = color;
    });
  }

  void logout() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Login2Screen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text("Home Screen"),
        actions: [
          PopupMenuButton<Color>(
            icon: Icon(Icons.palette),
            onSelected: changeBackgroundColor,
            itemBuilder: (context) => [
              PopupMenuItem(
                value: Colors.yellow,
                child: Row(
                  children: [
                    Icon(Icons.circle, color: Colors.yellow),
                    SizedBox(width: 8),
                    Text('Kuning'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: Colors.black,
                child: Row(
                  children: [
                    Icon(Icons.circle, color: Colors.black),
                    SizedBox(width: 8),
                    Text('Biru'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.circle, color: Colors.grey),
                    SizedBox(width: 8),
                    Text('Putih'),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.account_circle, size: 100, color: Colors.blue),
              SizedBox(height: 20),
              Text(
                "Selamat Datang!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Email: ${widget.email}",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: logout,
                icon: Icon(Icons.logout),
                label: Text("Logout"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
