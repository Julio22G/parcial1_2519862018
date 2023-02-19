import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});
  static String id = 'login_pagina';

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const Text(
                'Parcial I | ETPS3!',
                style: TextStyle(fontSize: 30),
              ),
              const Text('Julio Antonio Alas Gómez | 25-1986-2018'),
              const Text('Brayan Alexis Aleman Campos | 25-2103-2018'),
              SizedBox(
                height: 150.0,
                width: 150.0,
                child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/6214/6214064.png'),
              ),
              const SizedBox(
                height: 15.0,
              ),
              _usuarioTextField(),
              const SizedBox(
                height: 15.0,
              ),
              _passwordTextField(),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _usuarioTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            icon: Icon(Icons.person_pin_sharp),
            hintText: 'Ingrese su usuario',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: const InputDecoration(
            icon: Icon(Icons.shield_sharp),
            hintText: 'Ingrese su contraseña',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }
}
