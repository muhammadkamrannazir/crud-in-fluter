// ignore_for_file: prefer_const_constructors, duplicate_ignore
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorgeous_login/Screens/splash.dart';

// void main() {
//   runApp(
//     MyApp(),
//   );
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: FirebaseOptions(
    //   apiKey: "AIzaSyCAC8jwmo5IiFLYURGCFD4Ask6gfRa_m44",
    //   authDomain: "crud-operations-in-flutter.firebaseapp.com",
    //   projectId: "crud-operations-in-flutter",
    //   storageBucket: "crud-operations-in-flutter.appspot.com",
    //   messagingSenderId: "712366121809",
    //   appId: "1:712366121809:web:63850afc8882343e6fa970",
    // ),
  );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.black,
        body: Splash(),
      ),
    );
  }
}
