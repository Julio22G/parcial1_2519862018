import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:parcial1_2519862018/login_examen1.dart';
import 'package:parcial1_2519862018/login2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final screens = [
    //const Center(child: Text('Home Screen', style: TextStyle(fontSize: 45))),
    LoginPagina(),
    Page2(),
    const Center(
        child:
            Text('Configuracion del sistema', style: TextStyle(fontSize: 45))),
  ];
  final colors = [
    Colors.cyan,
    Colors.purple,
    Colors.green,
    //Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parcial 1 ',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
        centerTitle: true,
        backgroundColor: colors[_currentIndex],
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(bottom: 10),
        child: GNav(
          color: colors[_currentIndex],
          tabBackgroundColor: colors[_currentIndex],
          selectedIndex: _currentIndex,
          tabBorderRadius: 10,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          onTabChange: (index) => {setState(() => _currentIndex = index)},
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Registrarse',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
              //onPressed: LoginPagina(),
            ),
            GButton(
              icon: Icons.person,
              text: 'Login',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            GButton(
              icon: Icons.adjust_rounded,
              text: 'Configuración',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ) /*,
            GButton(
              icon: Icons.person,
              text: 'Profile',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),*/
          ],
        ),
      ),
    );
  }
}
