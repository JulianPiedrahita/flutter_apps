import 'package:flutter/material.dart';

class AuthBaground extends StatelessWidget {
  final Widget child;
  const AuthBaground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          const _Background_Login(),
          SafeArea(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 30, bottom: 20),
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
      child: Image.asset('assets/fondo_morado.jpeg',
          width: double.infinity, height: double.infinity, fit: BoxFit.cover),
    );
  }
}

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/fondo_app.jpg',
        width: double.infinity, height: double.infinity, fit: BoxFit.cover);
  }
}
