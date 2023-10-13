import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  MyPage({super.key});

  String username = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Hello!"),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              width: 250,
              child: CupertinoTextField(
                placeholder: "username",
                onChanged: (value) {
                  username = value;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              width: 250,
              child: CupertinoTextField(
                placeholder: "password",
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
              ),
            ),
            CupertinoButton(
              child: const Text("Sign in"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}