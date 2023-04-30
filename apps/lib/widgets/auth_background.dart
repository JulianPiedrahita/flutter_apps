import 'package:flutter/material.dart';

class AuthBaground extends StatelessWidget {
  final Widget child;
  const AuthBaground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          _Background_Login(),
          SafeArea(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30, bottom: 20),
              child: Logo(),
            ),
          ),
          this.child,
        ],
      ),
    );
  }
}

class _Background_Login extends StatelessWidget {
  const _Background_Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/fondo_uno.jpeg',
          width: double.infinity, height: double.infinity, fit: BoxFit.cover),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Image.asset(
      'assets/sophos.png',
    );
  }
}

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/fondo_uno.jpeg',
          width: double.infinity, height: double.infinity, fit: BoxFit.cover),
    );
  }
}
