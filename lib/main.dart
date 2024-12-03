import 'package:flutter/material.dart';

import 'Paginas/PaginaComentarios.dart';
import 'Paginas/PaginaInformacion.dart';
import 'Paginas/PaginaInicio.dart';
import 'Paginas/PaginaRutas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ITSABUS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _paginaActual = 0;
  final List<Widget> _paginas = const [
    //InicioPage(),
    PaginaInicio(),
    PaginaRutas(),
    PaginaComentarios(),
    PaginaInformacion(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      //body: PaginaRutas(),
      /*body: Center(
        child: _paginas[_paginaActual],
      ),*/
      body: _paginas[_paginaActual],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed, // PONER CUANDO SON MAS DE 4 OPCIONES
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
              label: 'Inicio',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.directions_bus_rounded),
              label: 'Rutas',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.comment_rounded), //comment_rounded
              label: 'Comentarios',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded), //contact_page_rounded / contact_support
              label: 'Informacion',
            ),
          ],

          selectedItemColor: Theme.of(context).colorScheme.primary,
          onTap: (index){
            setState(() {
              _paginaActual = index;
            });
          },
        currentIndex: _paginaActual,
      ),
    );
  }
}
