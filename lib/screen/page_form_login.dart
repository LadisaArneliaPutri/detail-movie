import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'detail_login.dart';

class PageFormLogin extends StatefulWidget {
  const PageFormLogin({super.key});

  @override
  State<PageFormLogin> createState() => _PageFormLoginState();
}

class _PageFormLoginState extends State<PageFormLogin> {
  // Controller
  TextEditingController etUsername = TextEditingController();
  TextEditingController etPassword = TextEditingController();

  // Simulated correct credentials
  final String correctUsername = "admin";
  final String correctPassword = "123456";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Page Form Login'),
      ),
      body: Form(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Form Login User',
                style: TextStyle(
                  fontSize: 15, color: Colors.pink, fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextFormField(
              controller: etUsername,
              decoration: const InputDecoration(
                hintText: 'Input Username',
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              controller: etPassword,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Input Password',
              ),
            ),
            const SizedBox(height: 25),
            MaterialButton(
              onPressed: () {
                String inputUsername = etUsername.text;
                String inputPassword = etPassword.text;

                if (inputUsername == correctUsername && inputPassword == correctPassword) {
                  showToast('Login Berhasil',
                    context: context,
                    axis: Axis.horizontal,
                    alignment: Alignment.center,
                    position: StyledToastPosition.bottom,
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailLogin(inputUsername, inputPassword),
                    ),
                  );
                } else {
                  showToast('Username atau Password salah!',
                    context: context,
                    axis: Axis.horizontal,
                    alignment: Alignment.center,
                    position: StyledToastPosition.bottom,
                    backgroundColor: Colors.pink,
                  );
                }
              },
              color: Colors.pink,
              textColor: Colors.white,
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}