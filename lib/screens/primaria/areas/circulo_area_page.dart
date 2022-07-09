import 'package:macalculator/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CirculoArea extends StatefulWidget {
  const CirculoArea({Key? key}) : super(key: key);

  @override
  State<CirculoArea> createState() => _CirculoAreaState();
}

class _CirculoAreaState extends State<CirculoArea> {
  final TextEditingController _controller = TextEditingController();
  double _resultado = 0.0;
  double _radioCuadrado = 0.0;
  double _radio = 0.0;

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
            TextFieldNumber(controller: _controller, hint: 'Radio'),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _radio = double.parse(_controller.text);
                  _radioCuadrado = _radio * _radio;
                  _resultado = pi * _radioCuadrado;
                });
              },
              child: const Text(
                '=',
                style: TextStyle(color: Colors.white),
              ),
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
