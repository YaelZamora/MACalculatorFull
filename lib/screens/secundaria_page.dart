import 'package:flutter/material.dart';
import 'package:macalculator/screens/secundaria/primer_a%C3%B1o_page.dart';
import 'package:macalculator/screens/workingon_page.dart';

class SecundariaPage extends StatelessWidget {
  SecundariaPage({Key? key}) : super(key: key);

  final List<String> _grados = [
    'Primer año',
    //'Segundo año',
    //'Tercer año',
  ];

  final List<Widget> _paginas = [
    SecundariaUno(),
    //const WorkingOnPage(),
    //const WorkingOnPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) => ListTile(
        title: Text(
          _grados.elementAt(index),
          style: const TextStyle(color: Colors.white),
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => _paginas.elementAt(index),
          ),
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
