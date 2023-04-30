import 'package:flutter/material.dart';

import 'package:apps/widgets/widgets.dart';



class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AuthBaground(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 300),
                CardContainer(),
                SizedBox(
                  height: 200,
                ),
                Text(
                  'Crear una nueva cuenta',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}