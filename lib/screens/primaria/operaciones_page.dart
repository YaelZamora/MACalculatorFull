import 'package:macalculator/widgets/textfield.dart';
import 'package:flutter/material.dart';

class OperacionesPage extends StatefulWidget {
  const OperacionesPage({Key? key, required this.nombre}) : super(key: key);

  final String nombre;

  @override
  State<OperacionesPage> createState() => _OperacionesPageState();
}

class _OperacionesPageState extends State<OperacionesPage> {
  final TextEditingController _numero1 = TextEditingController();
  final TextEditingController _numero2 = TextEditingController();
  double _resultado = 0.0;
  double _operador1 = 0.0;
  double _operador2 = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: const Color.fromRGBO(32, 44, 86, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldNumber(
                controller: _numero1,
                hint: 'Primer número',
              ),
              SizedBox(
                height: 30,
                child: Icon(
                  (widget.nombre == 'suma')
                      ? Icons.add
                      : (widget.nombre == 'resta')
                          ? Icons.horizontal_rule
                          : (widget.nombre == 'multi')
                              ? Icons.close
                              : Icons.change_circle,
                  color: Colors.white,
                ),
              ),
              TextFieldNumber(
                controller: _numero2,
                hint: 'Segundo número',
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _operador1 = double.parse(_numero1.text);
                    _operador2 = double.parse(_numero2.text);
                    if (widget.nombre == 'suma') {
                      _resultado = _operador1 + _operador2;
                    } else if (widget.nombre == 'resta') {
                      _resultado = _operador1 - _operador2;
                    } else if (widget.nombre == 'multi') {
                      _resultado = _operador1 * _operador2;
                    } else {
                      _resultado = _operador1 / _operador2;
                    }
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
      ),
    );
  }
}
