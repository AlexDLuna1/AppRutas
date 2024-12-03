import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Ruta7Page extends StatefulWidget {
  const Ruta7Page({super.key});

  @override
  State<Ruta7Page> createState() => _Ruta7PageState();
}

final Uri _url = Uri.parse(
    'https://www.google.com/maps/d/embed?mid=1Rr1H5GqgEgm8as3I7vw3DZyrRGF3irM&ehbc=2E312F');

class _Ruta7PageState extends State<Ruta7Page> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: const Text(
            "ITSABUS",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    // TEXTO RUTAS
                    const Text('Ruta 7', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),

                    // DIVIDOR ENTRE TEXTO RUTAS Y BTON RUTA 1
                    const Divider(
                      height: 20,
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                      color: Colors.grey,
                    ),

                    const SizedBox(height: 10),

                    const Text('Colonias:', style: TextStyle(fontSize: 22 ,fontWeight: FontWeight.bold),),

                    const SizedBox(height: 20),

                    //LISTA DE COLONIAS POR DONDE PASA LA RUTA
                    const ListaRutas([
                      'Altos de Santa Teresa',
                      'Las Aves.',
                      'Paraiso.',
                      'Municipio Libre',
                      'Cecati.'
                    ],),

                    const SizedBox(height: 20),

                    //IMAGEN RUTA 1
                    Center(
                      child: SizedBox(
                        height: 270,
                        child: Image.asset('images/Rutas/Ruta_7.jpg', fit: BoxFit.fitWidth),
                      ),
                    ),

                    const SizedBox(height: 20),

                    //BTN PARA MOSTRAR RUTA EN GOOGLE MAPS
                    const Center(
                      child: ElevatedButton(
                        onPressed: _launchUrl,
                        child: Text(
                          'Mostrar en Maps',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ]
              ),
            ),
          ),
        )
      /*body: ,*/
    );
  }
}

class ListaRutas extends StatelessWidget {
  const ListaRutas(this.texts, {super.key});
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in texts) {
      // Add list item
      widgetList.add(ListaItemRutas(text));
      // Add space between items
      widgetList.add(const SizedBox(height: 5.0));
    }

    return Column(children: widgetList);
  }
}

class ListaItemRutas extends StatelessWidget {
  const ListaItemRutas(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text("• ", style: TextStyle(fontSize: 18),),
        Expanded(
          child: Text(text, style: const TextStyle(fontSize: 18),),
        ),
      ],
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}