import 'package:flutter/material.dart' show AssetImage, BoxFit, BuildContext, Center, Colors, Column, Container, CrossAxisAlignment, Divider, EdgeInsets, Expanded, FontWeight, Icon, IconButton, Icons, Image, Row, SingleChildScrollView, SizedBox, State, StatefulWidget, Text, TextStyle, Widget;

double _volume = 0.0;
class PaginaInicio extends StatefulWidget {
  const PaginaInicio({super.key});

  @override
  State<PaginaInicio> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  int _cambiarImagen = 0;

  List<AssetImage> assetImages = [
    const AssetImage("images/Camiones/Camiones_1.jpg"),
    const AssetImage("images/Camiones/Camiones_2.jpg"),
    const AssetImage("images/Camiones/Camiones_3.jpg"),
    const AssetImage("images/Camiones/Camiones_4.jpg"),
    const AssetImage("images/Camiones/Camiones_5.jpg"),
    const AssetImage("images/Camiones/Camiones_6.jpg"),
    const AssetImage("images/Camiones/Camiones_7.jpg"),
    const AssetImage("images/Camiones/Camiones_8.jpg"),
    const AssetImage("images/Camiones/Camiones_9.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // TEXTO INICIO
                const Text('Inicio', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),

                // DIVIDOR ENTRE TEXTO RUTAS Y TEXTO DE EJEMPLO
                const Divider(
                  height: 20,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.grey,
                ),

                //TEXTO DE EJEMPLO
                const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non nisi ut ante luctus fermentum. Aenean eleifend ac orci sed malesuada. Curabitur neque enim, malesuada ac pretium in, viverra non turpis. Nulla ante dui, suscipit vitae lacus dapibus, tincidunt ullamcorper ligula. Curabitur pellentesque nec odio lobortis sodales. In dolor est, posuere vitae mi vel, venenatis auctor magna. Nunc nunc risus, dapibus porttitor ultricies rutrum, tristique ut odio. Nam feugiat, augue sit amet sollicitudin facilisis, quam ex euismod neque, sed bibendum leo nulla ac mauris.'),

                const SizedBox(height: 20),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 30),

                    // BOTON PARA CAMBIAR IMG IZQ
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new),
                      onPressed: () {
                        setState(() {
                          _cambiarImagen--;
                          if(_cambiarImagen < 0) {
                            _cambiarImagen = assetImages.length - 1;
                          }
                        });
                      },
                    ),

                    //IMAGEN CENTRAL
                    Expanded(
                        child: SizedBox(
                          height: 300,
                          child: Image(image: assetImages[_cambiarImagen], fit: BoxFit.fitWidth),
                        ),
                    ),

                    // BOTON PARA CAMBIAR IMG DER
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios_outlined),
                      onPressed: () {
                        setState(() {
                          _cambiarImagen++;
                          if(_cambiarImagen >= assetImages.length) {
                            _cambiarImagen = 0;
                          }
                        });
                      },
                    ),
                  ],
                ),
                //Text("$_cambiarImagen"),
                //Text("${assetImages.length - 1}"),
              ],
            ),
          )
      ),
    );
  }
}