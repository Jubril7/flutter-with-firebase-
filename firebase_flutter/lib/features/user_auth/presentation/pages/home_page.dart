// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home"
          ),
      ),
      body: const Center(
        child: Text(
          "Welcome to N5"
          ),
      ),
    );
  }
}