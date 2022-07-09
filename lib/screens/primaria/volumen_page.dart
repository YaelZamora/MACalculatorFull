import 'package:macalculator/screens/primaria/volumenes/volumenes.dart';
import 'package:flutter/material.dart';

class VolumenPage extends StatelessWidget {
  VolumenPage({Key? key}) : super(key: key);

  final List<String> _volumenes = [
    'Cono',
    'Esfera',
    'Prisma Cuadrangular',
    'Cilindro',
  ];

  final List<Widget> _paginas = const [
    ConoVolumen(),
    EsferaVolumen(),
    PrismaCuadrangularVolumen(),
    CilindroVolumen(),
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
          itemCount: _volumenes.length,
          itemBuilder: (BuildContext context, int index) => ListTile(
            title: Text(
              _volumenes.elementAt(index),
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
