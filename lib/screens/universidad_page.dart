import 'package:flutter/material.dart';

class UniversidadPage extends StatelessWidget {
  UniversidadPage({Key? key}) : super(key: key);

  final List<String> _grados = [
    'Primer semestre',
    'Segundo semestre',
    'Tercer semestre',
    'Cuarto semestre',
    'Quinto semestre',
    'Sexto semestre',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) => ListTile(
        title: Text(
          _grados.elementAt(index),
          style: const TextStyle(color: Colors.white),
        ),
      ),
      itemCount: _grados.length,
      separatorBuilder: (BuildContext context, int index) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Divider(
          color: Colors.white,
        ),
      ),
    );
  }
}
