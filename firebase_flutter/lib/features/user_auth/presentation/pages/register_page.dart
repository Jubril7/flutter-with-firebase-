import 'package:firebase_flutter/features/user_auth/presentation/pages/login_page.dart';
import 'package:firebase_flutter/features/user_auth/presentation/widgets/form_container_widget.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
const RegisterPage({super.key});

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
              "Register",
              style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const FormContainerWidget(
              hintText: "Username",
              isPasswordField: false,
            ),
            const SizedBox(
              height: 10.0,
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
            Container(
              width: double.infinity,
              height: 45.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.red,
              ),
              child: const Center(
                  child:  Text(
                "Register",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
            ),
            const SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an Account?"
                ),
                const SizedBox(width: 5.0,),
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const LoginPage()), (route) => false);
                  },
                  child: const Text(
                    "Login",
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