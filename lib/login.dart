import 'package:example/profile.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  String _inputUsername = '';
  String _inputPassword = '';
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 60),
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(30)),
                color: Color(0xff5038bc),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ristek',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Arial',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'USERNAME',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      filled: true,
                      hoverColor: Colors.white,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _inputUsername = value!;
                      });
                    },
                    onSaved: (String? value) {
                      _inputUsername = value!;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'PASSWORD',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      filled: true,
                      hoverColor: Colors.white,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _inputPassword = value!;
                      });
                    },
                    onSaved: (String? value) {
                      _inputPassword = value!;
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (_inputUsername != 'Ristek' && _inputPassword != '123456') {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 165, 40, 31),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: const Icon(
                              Icons.clear_sharp,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Flexible(
                            child: Text(
                                'Input username dan/atau password salah!',
                                overflow: TextOverflow.visible),
                          ),
                        ],
                      ),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: const Color.fromARGB(255, 211, 59, 48),
                    ),
                  );
                } else {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyMainPage(),
                      ));
                }
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 15,
                ),
              ),
              child: const Text(
                "LOGIN",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Palette {
  static const MaterialColor kToDark = MaterialColor(
    0xff5038bc, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffce5641), //10%
      100: Color(0xffb74c3a), //20%
      200: Color(0xffa04332), //30%
      300: Color(0xff89392b), //40%
      400: Color(0xff733024), //50%
      500: Color(0xff5c261d), //60%
      600: Color(0xff451c16), //70%
      700: Color(0xff2e130e), //80%
      800: Color(0xff170907), //90%
      900: Color(0xff000000), //100%
    },
  );
}
