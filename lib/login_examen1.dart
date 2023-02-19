import 'package:flutter/material.dart';

class LoginPagina extends StatefulWidget {
  const LoginPagina({super.key});
  static String id = 'login_pagina';

  @override
  State<LoginPagina> createState() => _LoginPaginaState();
}

class _LoginPaginaState extends State<LoginPagina> {
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
              _nombreTextField(),
              const SizedBox(
                height: 15.0,
              ),
              _apellidosTextField(),
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

  Widget _nombreTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
            icon: Icon(Icons.person),
            hintText: 'Ingrese su nombre',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _apellidosTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
            icon: Icon(Icons.person_pin_sharp),
            hintText: 'Ingrese su apellido',
          ),
          onChanged: (value) {},
        ),
      );
    });
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
