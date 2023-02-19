//import 'package:bottom_navbar/home_page.dart';
import 'package:parcial1_2519862018/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}



/*import 'package:parcial1_2519862018/login_examen1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parcial 1 ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: LoginPagina.id,
      routes: {
        LoginPagina.id: (context) => LoginPagina(),
      },
    );
  }
}*/
