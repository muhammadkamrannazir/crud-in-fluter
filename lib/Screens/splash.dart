// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Login/tabs.dart';
import 'memo.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 1),
        () => Get.to(
              StreamBuilder(
                stream: FirebaseAuth.instance.authStateChanges(),
                builder: (c, userSnapshot) {
                  if (userSnapshot.hasData) {
                    return const Memo();
                  }
                  return Tabs();
                },
              ),
            ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'assets/memo.png',
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
