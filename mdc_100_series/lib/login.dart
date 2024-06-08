import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Text editing controllers for username and password
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controllers when the widget is removed from the tree
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                const Text(
                  'SHRINE',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 120.0),
            // Username TextField
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 12.0),
            // Password TextField
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 24.0),
            // ButtonBar with CANCEL and NEXT buttons
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                // CANCEL button
                TextButton(
                  child: const Text('CANCEL'),
                  onPressed: () {
                    // Clear text fields when the CANCEL button is pressed
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                ),
                // NEXT button
                ElevatedButton(
                  child: const Text('NEXT'),
                  onPressed: () {
                    // Perform login action here
                    // For now, just pop back to the previous screen
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 5.0,
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
