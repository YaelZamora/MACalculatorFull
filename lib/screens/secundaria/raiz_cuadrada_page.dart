import 'dart:math';

import 'package:flutter/material.dart';
import 'package:macalculator/widgets/textfield.dart';

class RaizCuadradaPage extends StatefulWidget {
  const RaizCuadradaPage({Key? key}) : super(key: key);

  @override
  State<RaizCuadradaPage> createState() => _RaizCuadradaPageState();
}

class _RaizCuadradaPageState extends State<RaizCuadradaPage> {
  final TextEditingController _controller = TextEditingController();
  double _raiz = 0.0;
  double _resultado = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: const Color.fromRGBO(32, 44, 86, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldNumber(
              controller: _controller,
              hint: 'Raiz',
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _raiz = double.parse(_controller.text);
                  _resultado = sqrt(_raiz);
                });
              },
              child: const Text('='),
            ),
            Text(
              _resultado.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
