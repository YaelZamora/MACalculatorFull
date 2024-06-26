import 'dart:math';

import 'package:flutter/material.dart';

import '../../../widgets/textfield.dart';

class EsferaVolumen extends StatefulWidget {
  const EsferaVolumen({Key? key}) : super(key: key);

  @override
  State<EsferaVolumen> createState() => _EsferaVolumenState();
}

class _EsferaVolumenState extends State<EsferaVolumen> {
  final TextEditingController _controller = TextEditingController();
  double _resultado = 0.0;
  double _radioCubo = 0.0;
  double _radio = 0.0;
  double _preliminar = 0.0;

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
                  _radioCubo = _radio * _radio * _radio;
                  _preliminar = pi * _radioCubo;
                  _resultado = (4 * _preliminar) / 3;
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
