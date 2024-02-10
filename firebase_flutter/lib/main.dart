import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb) {
    await Firebase.initializeApp(options: const FirebaseOptions(apiKey: "AIzaSyCm-eYKCUXpjdLaGLkcRb86kf6kCc1E-Vk", appId: "1:134084678205:web:29093a6eca42b53e965054", messagingSenderId: "134084678205", projectId: "fir-flutter-be8b7"));
  }
  await Firebase.initializeApp();
    runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
