// import 'package:flutter/foundation.dart';
import 'package:firebase_flutter/features/user_auth/presentation/widgets/form_container_widget.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'register_page.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("shopArsenal",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
            const Text(
              "Login",
              style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const FormContainerWidget(
              hintText: "Email",
              isPasswordField: false,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const FormContainerWidget(
              hintText: "Password",
              isPasswordField: true,
            ),
            const SizedBox(
              height: 30.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Homepage()));
              },
              child: Container(
                width: double.infinity,
                height: 45.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.red,
                ),
                child: const Center(
                    child:  Text(
                  "Login",
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            const SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an Account?"
                ),
                const SizedBox(width: 5.0,),
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const RegisterPage()), (route) => false);
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold
                    ),
                  
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
