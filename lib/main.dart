import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: const Color.fromRGBO(237, 240, 251, 1),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 320,
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "Управление учетной записью Ubisoft",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(111, 117, 135, 1), fontSize: 20),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                width: 320,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: double.maxFinite,
                      height: 80,
                      color: const Color.fromRGBO(37, 45, 58, 1),
                      child: Image.asset('images/ubisoft_logo.png', scale: 25),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "ВХОД",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w800),
                        ),
                        TextButton(
                          child: const Text("СОЗДАЙТЕ УЧЕТНУЮ ЗАПИСЬ",
                              style: TextStyle(fontSize: 16)),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.all(8),
                      width: double.maxFinite,
                      child: CupertinoTextField(
                        style:
                            const TextStyle(color: Colors.black, fontSize: 12),
                        placeholder: "Адрес электронной почты",
                        placeholderStyle:
                            const TextStyle(color: Colors.black, fontSize: 12),
                        prefix: const Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                          size: 10,
                        ),
                        onChanged: (value) {
                          username = value;
                        },
                        decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.black)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      margin: const EdgeInsets.all(8),
                      width: double.maxFinite,
                      child: CupertinoTextField(
                        style:
                            const TextStyle(color: Colors.black, fontSize: 12),
                        placeholder: "Пароль",
                        placeholderStyle:
                            const TextStyle(color: Colors.black, fontSize: 12),
                        prefix: const Icon(
                          Icons.lock_outlined,
                          color: Colors.black,
                          size: 10,
                        ),
                        onChanged: (value) {
                          password = value;
                        },
                        decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.black)),
                        ),
                        obscureText: true,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          child: const Row(
                            children: [
                              Icon(Icons.check_box_sharp, size: 18),
                              Text(" Запомнить",
                                  style: TextStyle(color: Colors.black)),
                            ],
                          ),
                          onPressed: () {},
                        ),
                        TextButton(
                          child: const Text("Забыли пароль?"),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Вход',
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(children: [
                      
                    Container(
                      height: 1, // Высота вертикальной полосы
                      width: 70, // Ширина вертикальной полосы
                      color: Colors.grey, // Цвет вертикальной полосы
                    ),
                    const Center(
                      child: Text(
                        "  Или войдите с помощью: ",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ),
                    Container(
                      height: 1, // Высота второй вертикальной полосы
                      width: 70, // Ширина второй вертикальной полосы
                      color: Colors.grey, // Цвет второй вертикальной полосы
                    ),
                    ],
                    ),
                    const SizedBox(height: 10),
                    Image.asset('images/xbox.png', scale: 100),
                    const SizedBox(height: 40),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                            "Положение об использовании персональных данных",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w800)))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
