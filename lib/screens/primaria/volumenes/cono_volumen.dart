import 'package:macalculator/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ConoVolumen extends StatefulWidget {
  const ConoVolumen({Key? key}) : super(key: key);

  @override
  State<ConoVolumen> createState() => _ConoVolumenState();
}

class _ConoVolumenState extends State<ConoVolumen> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  double _resultado = 0.0;
  double _radio = 0.0;
  double _radioCuadrado = 0.0;
  double _altura = 0.0;
  double _base = 0.0;

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
            TextFieldNumber(controller: _controller, hint: 'Radio Cono'),
            const SizedBox(
              height: 10,
            ),
            TextFieldNumber(controller: _controller2, hint: 'Altura Cono'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _radio = double.parse(_controller.text);
                  _altura = double.parse(_controller2.text);
                  _radioCuadrado = _radio * _radio;
                  _base = pi * _radioCuadrado;
                  _resultado = (_base * _altura) / 3;
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
            )
          ],
        ),
      ),
    );
  }
}
