import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FLUTTER PRACTICE'),
          backgroundColor: const Color.fromARGB(255, 226, 157, 9),
          titleTextStyle: const TextStyle(color: Colors.yellowAccent),
        ),
        body: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide(color: Colors.orange)),
                      contentPadding: const EdgeInsets.all(16.0),
                      hintText: 'Enter your email here..',
                      suffix: Icon(
                        Icons.email,
                        color: Colors.orangeAccent,
                      )),
                ),
                const SizedBox(height: 16), // Using SizedBox for spacing
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      contentPadding: const EdgeInsets.all(16.0),
                      hintText: 'your password here ..',
                      suffix: Icon(
                        Icons.password,
                        color: Colors.deepOrange,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
