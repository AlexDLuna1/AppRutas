import 'package:flutter/material.dart';

import 'Rutas/Ruta1.dart';
import 'Rutas/Ruta2.dart';
import 'Rutas/Ruta3.dart';
import 'Rutas/Ruta4.dart';
import 'Rutas/Ruta5.dart';
import 'Rutas/Ruta6.dart';
import 'Rutas/Ruta7.dart';

class PaginaRutas extends StatefulWidget {
  const PaginaRutas({super.key});

  @override
  State<PaginaRutas> createState() => _PaginaRutasState();
}

class _PaginaRutasState extends State<PaginaRutas> {
  //final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              // TEXTO RUTAS
              const Text('Rutas', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),

              // DIVIDOR ENTRE TEXTO RUTAS Y BTON RUTA 1
              const Divider(
                height: 20,
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
              ),

              // BOTON RUTA 1
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Ruta1Page()));
                },
                style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        )
                    )
                ),
                child: Container(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),

                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: const Text(
                            "Ruta 1",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),

                      const Align(
                        child: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ],
                  ),
                ),
              ),

              // DIVIDOR ENTRE BTN RUTA 1 Y BTON RUTA 2
              const Divider(
                height: 20,
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
              ),

              // BOTON RUTA 2
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Ruta2Page()));
                },

                style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        )
                    )
                ),
                child: Container(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: Row(
                    children: [

                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: const Text(
                            "Ruta 2",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),

                      const Align(
                        child: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ],
                  ),
                ),
              ),

              // DIVIDOR ENTRE BTN RUTA 2 Y BTON RUTA 3
              const Divider(
                height: 20,
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
              ),

              // BOTON RUTA 3
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Ruta3Page()));
                },

                style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        )
                    )
                ),
                child: Container(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: Row(
                    children: [

                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: const Text(
                            "Ruta 3",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),

                      const Align(
                        child: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ],
                  ),
                ),
              ),

              // DIVIDOR ENTRE BTN RUTA 3 Y BTON RUTA 4
              const Divider(
                height: 20,
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
              ),

              // BOTON RUTA 4
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Ruta4Page()));
                },

                style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        )
                    )
                ),
                child: Container(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: Row(
                    children: [

                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: const Text(
                            "Ruta 4",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),

                      const Align(
                        child: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ],
                  ),
                ),
              ),

              // DIVIDOR ENTRE BTN RUTA 4 Y BTON RUTA 5
              const Divider(
                height: 20,
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
              ),

              // BOTON RUTA 5
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Ruta5Page()));
                },

                style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        )
                    )
                ),
                child: Container(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: Row(
                    children: [

                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: const Text(
                            "Ruta 5",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),

                      const Align(
                        child: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ],
                  ),
                ),
              ),

              // DIVIDOR ENTRE BTN RUTA 5 Y BTON RUTA 6
              const Divider(
                height: 20,
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
              ),

              // BOTON RUTA 6
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Ruta6Page()));
                },

                style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        )
                    )
                ),
                child: Container(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: Row(
                    children: [

                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: const Text(
                            "Ruta 6",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),

                      const Align(
                        child: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ],
                  ),
                ),
              ),

              // DIVIDOR ENTRE BTN RUTA 6 Y BTON RUTA 6
              const Divider(
                height: 20,
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
              ),

              // BOTON RUTA 7
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Ruta7Page()));
                },

                style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        )
                    )
                ),
                child: Container(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: Row(
                    children: [

                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: const Text(
                            "Ruta 7",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),

                      const Align(
                        child: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      )
    );
  }
}

