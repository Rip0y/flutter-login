import 'package:flutter/material.dart';
import 'home2_screen.dart';

class Login2Screen extends StatefulWidget {
  const Login2Screen({super.key});

  @override
  State<Login2Screen> createState() => _Login2ScreenState();
}

class _Login2ScreenState extends State<Login2Screen> {
  TextEditingController emailcontroler = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();
  bool tampilpassword = true;
  Color backgroundColor = Colors.white;

  showpassword() {
    setState(() {
      tampilpassword = !tampilpassword;
    });
  }

  changeBackgroundColor(Color color) {
    setState(() {
      backgroundColor = color;
    });
  }

  void login() {
    String email = emailcontroler.text.trim();
    String password = passwordcontroler.text.trim();

    if (email.isNotEmpty && password.isNotEmpty) {
    Navigator.pushReplacement(
  context,
  MaterialPageRoute(
    builder: (context) => HomeScreen(email: email),
  ),
);

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text("Login Screen"),
        actions: [
          PopupMenuButton<Color>(
            icon: Icon(Icons.palette),
            onSelected: (color) {
              changeBackgroundColor(color);
            },
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.person, size: 80, color: Colors.blue),
                    SizedBox(height: 20),
                    Text(
                      'Silakan Login',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      controller: emailcontroler,
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Masukkan email",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: tampilpassword,
                      controller: passwordcontroler,
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Masukkan password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: showpassword,
                          icon: Icon(
                            tampilpassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: login,
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: Text('Login'),
                      ),
                    ),
                    TextButton(
                      onPressed: showpassword,
                      child: Text("Tampilkan / Sembunyikan Password"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
