import 'package:macalculator/screens/screens.dart';
import 'package:macalculator/screens/workingon_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  final List<Widget> paginas = [
    FirstYearPage(),
    const WorkingOnPage(),
    const WorkingOnPage(),
    const WorkingOnPage(),
    //SecundariaPage(),
    //PreparatoriaPage(),
    //UniversidadPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(32, 44, 86, 1),
      appBar: AppBar(
        title: const Text(
          'MACalculator',
          style: TextStyle(
            color: Color.fromRGBO(32, 44, 86, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromRGBO(172, 150, 90, 1),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                color: Color.fromRGBO(32, 44, 86, 1),
              ))
        ],
      ),
      body: paginas[index],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.blue,
        fixedColor: Colors.blue.shade900,
        currentIndex: index,
        onTap: (value) {
          setState(() => index = value);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Primaria',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.square_foot_rounded),
            label: 'Secundaria',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscript_rounded),
            label: 'Preparatoria',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.functions),
            label: 'Universidad',
          ),
        ],
      ),
    );
  }
}
