import 'package:flutter/material.dart';


class PaginaInformacion extends StatelessWidget {
  const PaginaInformacion({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              // TEXTO INFORMACION
              Text('Informacion', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),

              // DIVIDOR ENTRE TEXTO INFORMACION Y TEXTO NOMBRE DEL ENCARGADO
              Divider(
                height: 20,
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
              ),

              Text('Nombre del encargado:', style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.bold),),
              Text('Oscar Rafael Torres Gonzales'),
              SizedBox(height: 10),
              Text('Ocupacion:', style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.bold)),
              Text('Prefecto y actual Coordinador del Transporte Escolar'),
              SizedBox(height: 10),
              Text('Ubicacion:', style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.bold)),
              Text('Edificio B, en el area de Enfermeria y Control Escolar'),
              Text('Primer cubiculo a la izquierda'),

            ],
          ),
        ),
      ),
    );
  }
}