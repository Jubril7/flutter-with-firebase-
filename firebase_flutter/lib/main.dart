import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_flutter/features/app/start_screen/start_screen.dart';
// import 'package:firebase_flutter/features/user_auth/presentation/pages/home_page.dart';
import 'package:firebase_flutter/features/user_auth/presentation/pages/login_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb) {
    await Firebase.initializeApp(options: 
    const FirebaseOptions(
      apiKey: "AIzaSyCm-eYKCUXpjdLaGLkcRb86kf6kCc1E-Vk", 
      appId: String.fromEnvironment('APP_ID'), 
      messagingSenderId: String.fromEnvironment('MESSAGING_SENDER_ID'), 
      projectId: String.fromEnvironment('PROJECT_ID')
      )
    );
  } else {
    await Firebase.initializeApp();
  }
    runApp( const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(
        child: LoginPage(),
      )
      );
  }
}
