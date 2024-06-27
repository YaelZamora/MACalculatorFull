import 'package:flutter/material.dart';
import 'package:macalculator/screens/secundaria/secundaria.dart';
import 'package:macalculator/screens/workingon_page.dart';

class SecundariaUno extends StatelessWidget {
  SecundariaUno({Key? key}) : super(key: key);

  final List<String> _operaciones = [
    'Raíz Cuadrada',
    'Ecuación de Primer Grado',
    'Fracciones',
  ];

  final List<Widget> _paginas = [
    const RaizCuadradaPage(),
    const WorkingOnPage(),
    FraccionesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Primer año',
          style: TextStyle(color: Colors.white),
        ),
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
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => _paginas.elementAt(index),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
