import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: _pagetitle(),
        ),
      ),
    );
  }

  Widget _pagetitle() {
    return const Text(
      "GoMoooon",
      style: TextStyle(
        fontSize: 70,
        color: Colors.amber,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _imagee() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/we.jpeg"),
        ),
      ),
    );
  }
}
