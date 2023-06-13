import 'package:alpha/Pages/Dosya.dart';
import 'package:alpha/Pages/Loginform.dart';
import 'package:alpha/Pages/SplashScreen.dart';
import 'package:alpha/Pages/Thirdpage.dart';
import 'package:alpha/Pages/Tomar.dart';
import 'package:alpha/Pages/home.dart';
import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'Components/Palette.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'db/connection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PostgresConnection.getConnection();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',

      routes: {
        'SplashScreen': (context) => LoginForm(),
        'LoginForm': (context) => Homepage(),
        'LoginForm': (context) => Thirdpage(),
        'Thirdpage': (context) => Tomarpage(),
        'Thirdpage': (context) => Dosyapage(),
      },
      home: SplashScreen(),
    ),
  );
}
