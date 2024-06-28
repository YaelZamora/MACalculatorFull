import 'package:macalculator/screens/primaria/primaria.dart';
import 'package:flutter/material.dart';

class FirstYearPage extends StatelessWidget {
  FirstYearPage({Key? key}) : super(key: key);

  final List<String> _funciones = [
    'Suma',
    'Resta',
    'Multiplicación',
    'División',
    'Área',
    'Volumen',
    'Potencia',
    'Porcentaje',
  ];

  final List<IconData> _iconos = [
    Icons.add,
    Icons.horizontal_rule,
    Icons.close,
    Icons.change_circle_outlined,
    Icons.square_outlined,
    Icons.view_in_ar,
    Icons.superscript,
    Icons.percent,
  ];

  final List _destino = [
    'suma',
    'resta',
    'multi',
    'division',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) => ListTile(
          title: Text(
            _funciones.elementAt(index),
            style: const TextStyle(color: Colors.white),
          ),
          /*trailing: Icon(
            _iconos.elementAt(index),
            color: Colors.white,
          ),*/
          onTap: () {
            if (index < 4) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => OperacionesPage(
                    nombre: _destino.elementAt(index),
                  ),
                ),
              );
            } else if (index == 4) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => AreaPage(),
                ),
              );
            } else if (index == 5) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => VolumenPage(),
                ),
              );
            } else if (index == 6) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const PotenciaPage(),
                ),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const PorcentajePage(),
                ),
              );
            }
          }),
      separatorBuilder: (BuildContext context, int index) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Divider(
          color: Colors.white,
        ),
      ),
      itemCount: _funciones.length,
    );
  }
}
