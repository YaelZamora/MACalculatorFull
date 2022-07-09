import 'package:flutter/material.dart';

class SecundariaPage extends StatelessWidget {
  SecundariaPage({Key? key}) : super(key: key);

  final List<String> _grados = [
    'Primer año',
    'Segundo año',
    'Tercer año',
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
