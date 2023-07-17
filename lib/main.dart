import 'package:flutter/material.dart';
import 'package:game/pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GoMooon!",
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(113, 15, 67, 80),
      ),
      home: HomePage(),
    );
  }
}
