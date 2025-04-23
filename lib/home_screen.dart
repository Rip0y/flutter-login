import 'package:flutter/material.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  final String username;

  const HomeScreen({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Group Icon di pojok kanan bawah
          Positioned(
            bottom: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white.withOpacity(0.3), width: 2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 15,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Icon Home
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Menu Home ditekan')),
                      );
                    },
                    child: const Icon(Icons.home, color: Colors.white, size: 30),
                  ),
                  const SizedBox(width: 16),
                  // Icon Chat
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Menu Chat ditekan')),
                      );
                    },
                    child: const Icon(Icons.chat, color: Colors.white, size: 30),
                  ),
                  const SizedBox(width: 16),
                  // Icon Settings
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Menu Settings ditekan')),
                      );
                    },
                    child: const Icon(Icons.settings, color: Colors.white, size: 30),
                  ),
                  const SizedBox(width: 16),
                  // Icon Profile (paling kanan)
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(username: username),
                        ),
                      );
                    },
                    child: const Icon(Icons.person, color: Colors.amber, size: 36),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
