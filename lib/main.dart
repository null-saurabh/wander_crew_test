// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wander_crew/utils/routes.dart';

void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //     options: const FirebaseOptions(
  //         apiKey: "AIzaSyC8zp2q6s03HmmaSJ7Ud4YE0ryQFcUJg0I",
  //         authDomain: "wandercrew-334a7.firebaseapp.com",
  //         projectId: "wandercrew-334a7",
  //         storageBucket: "wandercrew-334a7.firebasestorage.app",
  //         messagingSenderId: "954584823741",
  //         appId: "1:954584823741:web:5821c3cce3b475ebc844d4",
  //         measurementId: "G-P4ZT2X499L"
  //     ));


  setUrlStrategy(PathUrlStrategy());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Wander Crew',
      debugShowCheckedModeBanner: false,
      theme: _buildTheme(),
      routerConfig: router,
    );
  }



  ThemeData _buildTheme() {
    var baseTheme = ThemeData(
      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      // fontFamily: 'Poppins',
      useMaterial3: true,
    );

    return baseTheme.copyWith(
      textTheme: GoogleFonts.poppinsTextTheme(baseTheme.textTheme),
    );
  }
}




