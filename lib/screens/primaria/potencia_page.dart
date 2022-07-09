import 'package:macalculator/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class PotenciaPage extends StatefulWidget {
  const PotenciaPage({Key? key}) : super(key: key);

  @override
  State<PotenciaPage> createState() => _PotenciaPageState();
}

class _PotenciaPageState extends State<PotenciaPage> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  num _base = 0.0;
  num _exponente = 0.0;
  num _resultado = 0.0;

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
            TextFieldNumber(controller: _controller, hint: 'Base'),
            const SizedBox(
              height: 10,
            ),
            TextFieldNumber(controller: _controller2, hint: 'Exponente'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _base = num.parse(_controller.text);
                  _exponente = num.parse(_controller2.text);
                  _resultado = pow(_base, _exponente);
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
