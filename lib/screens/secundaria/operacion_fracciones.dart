import 'package:flutter/material.dart';
import 'package:macalculator/widgets/textfield.dart';

class OperacionesFracciones extends StatefulWidget {
  const OperacionesFracciones({
    Key? key,
    required this.nombre,
  }) : super(key: key);

  final String nombre;

  @override
  State<OperacionesFracciones> createState() => _OperacionesFraccionesState();
}

class _OperacionesFraccionesState extends State<OperacionesFracciones> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();
  double _numerador1 = 0.0;
  double _denominador1 = 0.0;
  double _numerador2 = 0.0;
  double _denominador2 = 0.0;
  double _parcialDenominador = 0.0;
  //Multiplicador para obtener un comun denominador
  double _parcialNumerador1 = 0.0;
  double _parcialNumerador2 = 0.0;
  double _resultadoNumerador = 0.0;
  double _resultadoDenominador = 0.0;

  final List<IconData> _iconos = [
    Icons.add,
    Icons.horizontal_rule,
    Icons.close,
    Icons.change_circle_outlined,
  ];

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
            Numeradores(
              controller: _controller,
              controller2: _controller2,
            ), //Numeradores
            Icon(
              widget.nombre == 'Suma'
                  ? _iconos.first
                  : (widget.nombre == 'Resta')
                      ? _iconos.elementAt(1)
                      : (widget.nombre == 'Multiplicación')
                          ? _iconos.elementAt(2)
                          : _iconos.elementAt(3),
              color: Colors.white,
            ),
            Denominadores(
              controller3: _controller3,
              controller4: _controller4,
            ), //Denominadores
            ElevatedButton(
              onPressed: () {
                setState(() {
                  //Asignacion de valores según se introdujeron arriba
                  _numerador1 = double.parse(_controller.text);
                  _numerador2 = double.parse(_controller2.text);
                  _denominador1 = double.parse(_controller3.text);
                  _denominador2 = double.parse(_controller4.text);

                  //Operaciones primarias para manejar el mismo denominador
                  _parcialDenominador = _denominador1 * _denominador2;
                  _parcialNumerador1 = _numerador1 * _denominador2;
                  _parcialNumerador2 = _numerador2 * _denominador1;

                  if (widget.nombre == 'Suma') {
                    _resultadoNumerador =
                        _parcialNumerador1 + _parcialNumerador2;
                    _resultadoDenominador = _parcialDenominador;
                  } else if (widget.nombre == 'Resta') {
                    _resultadoNumerador =
                        _parcialNumerador1 - _parcialNumerador2;
                    _resultadoDenominador = _parcialDenominador;
                  } else if (widget.nombre == 'Multiplicación') {
                    _resultadoNumerador = _numerador1 * _numerador2;
                    _resultadoDenominador = _denominador1 * _denominador2;
                  } else {
                    _resultadoNumerador = _parcialNumerador1;
                    _resultadoDenominador = _parcialNumerador2;
                  }
                });
              },
              child: const Text('='),
            ),
            Text(
              _resultadoNumerador.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Divider(
                color: Colors.white,
              ),
            ),
            Text(
              _resultadoDenominador.toString(),
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

class Denominadores extends StatelessWidget {
  const Denominadores({
    Key? key,
    required this.controller3,
    required this.controller4,
  }) : super(key: key);

  final TextEditingController controller3;
  final TextEditingController controller4;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextFieldNumber(controller: controller3, hint: 'Denominador'),
        const SizedBox(width: 30),
        TextFieldNumber(controller: controller4, hint: 'Denominador'),
      ],
    );
  }
}

class Numeradores extends StatelessWidget {
  const Numeradores({
    Key? key,
    required this.controller,
    required this.controller2,
  }) : super(key: key);

  final TextEditingController controller;
  final TextEditingController controller2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextFieldNumber(controller: controller, hint: 'Numerador'),
        const SizedBox(width: 30),
        TextFieldNumber(controller: controller2, hint: 'Numerador'),
      ],
    );
  }
}
