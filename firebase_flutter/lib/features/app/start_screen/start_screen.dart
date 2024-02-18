// import 'package:flutter/foundation.dart';
// import 'package:firebase_flutter/features/user_auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  final Widget? child;
  const StartScreen({super.key, this.child});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3), (){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>  widget.child!), (route) => false);
      }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        "North London Forever",
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.w900, fontSize: 40.0),
      )
      ),
    );
  }
}
