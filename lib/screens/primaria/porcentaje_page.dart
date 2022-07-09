import 'package:macalculator/widgets/textfield.dart';
import 'package:flutter/material.dart';

class PorcentajePage extends StatefulWidget {
  PorcentajePage({Key? key}) : super(key: key);

  @override
  State<PorcentajePage> createState() => _PorcentajePageState();
}

class _PorcentajePageState extends State<PorcentajePage> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  double _base = 0.0;
  double _total = 0.0;
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
            TextFieldNumber(controller: _controller, hint: 'Primer número'),
            const SizedBox(
              height: 30,
              child: Icon(
                Icons.percent,
                color: Colors.white,
              ),
            ),
            TextFieldNumber(controller: _controller2, hint: 'Segundo número'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _base = double.parse(_controller.text);
                  _total = double.parse(_controller2.text);
                  _resultado = (_base * _total) / 100;
                });
              },
              child: Text('='),
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
