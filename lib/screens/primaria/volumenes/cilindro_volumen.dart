import 'package:flutter/material.dart';
import 'dart:math';
import '../../../widgets/textfield.dart';

class CilindroVolumen extends StatefulWidget {
  const CilindroVolumen({Key? key}) : super(key: key);

  @override
  State<CilindroVolumen> createState() => _CilindroVolumenState();
}

class _CilindroVolumenState extends State<CilindroVolumen> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  double _resultado = 0.0;
  double _preliminar = 0.0;
  double _radioCuadrado = 0.0;
  double _radio = 0.0;
  double _altura = 0.0;

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
            TextFieldNumber(controller: _controller2, hint: 'Altura'),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _radio = double.parse(_controller.text);
                  _altura = double.parse(_controller2.text);
                  _radioCuadrado = _radio * _radio;
                  _preliminar = pi * _radioCuadrado;
                  _resultado = _preliminar * _altura;
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
