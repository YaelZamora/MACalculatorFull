import 'package:macalculator/screens/primaria/areas/areas.dart';
import 'package:flutter/material.dart';

class AreaPage extends StatelessWidget {
  AreaPage({Key? key}) : super(key: key);

  final List<String> _areas = [
    'Rectángulo',
    'Círculo',
    'Triángulo',
  ];

  final List<Widget> _paginas = const [
    RectanguloArea(),
    CirculoArea(),
    TrianguloArea(),
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
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) => ListTile(
            title: Text(
              _areas.elementAt(index),
              style: TextStyle(color: Colors.white),
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
