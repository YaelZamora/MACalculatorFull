import 'package:flutter/material.dart';

import '../../../widgets/textfield.dart';

class PrismaCuadrangularVolumen extends StatefulWidget {
  const PrismaCuadrangularVolumen({Key? key}) : super(key: key);

  @override
  State<PrismaCuadrangularVolumen> createState() =>
      _PrismaCuadrangularVolumenState();
}

class _PrismaCuadrangularVolumenState extends State<PrismaCuadrangularVolumen> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  double _resultado = 0.0;
  double _base = 0.0;
  double _altura = 0.0;
  double _profundidad = 0.0;

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
            TextFieldNumber(controller: _controller2, hint: 'Altura'),
            const SizedBox(
              height: 10,
            ),
            TextFieldNumber(controller: _controller3, hint: 'Profundidad'),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _base = double.parse(_controller.text);
                  _altura = double.parse(_controller2.text);
                  _profundidad = double.parse(_controller3.text);
                  _resultado = _base * _altura * _profundidad;
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
