import 'package:flutter/material.dart';
import 'package:macalculator/screens/secundaria/operacion_fracciones.dart';

class FraccionesPage extends StatelessWidget {
  FraccionesPage({Key? key}) : super(key: key);

  final List<String> _operaciones = [
    'Suma',
    'Resta',
    'Multiplicación',
    'División',
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
        child: ListView.builder(
          itemCount: _operaciones.length,
          itemBuilder: (BuildContext context, int index) => ListTile(
            title: Text(
              _operaciones.elementAt(index),
              style: const TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => OperacionesFracciones(
                    nombre: _operaciones.elementAt(index),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
