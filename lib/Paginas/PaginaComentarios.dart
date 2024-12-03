import 'package:flutter/material.dart';

class PaginaComentarios extends StatefulWidget {
  const PaginaComentarios({super.key});

  @override
  State<PaginaComentarios> createState() => _PaginaComentariosState();
}

class _PaginaComentariosState extends State<PaginaComentarios> {
  //Comentario? _tipodeComent = Comentario

  final _formKey = GlobalKey<FormState>(); //CLAVE GLOBAL PARA INDENTIFICAR EL FORMULARIO

  //CONTROLADORES PARA LOS CAMPOS DEL FORMULARIO
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _commentController = TextEditingController();
  final _AsuntoController = TextEditingController();

  //FUNCION PARA VALIDAR Y ENVIAR EL FORMULARIO
  void _sumitForm(){
    if(_formKey.currentState!.validate()){
      //Si el formulario es valido, mostramos un mensaje en un dialogo
      showDialog(
          context: context,
          builder: (context){
            return AlertDialog(
              title: const Text('Formulario enviado'),
              content: Text('Nombre: ${_nameController.text} \nCorreo: ${_emailController.text} \nAsunto: ${_AsuntoController.text} \nComentario: ${_commentController.text}'),
              actions: [
                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cerrar'),
                ),
              ],
            );
          }
      );
    }
  }

  @override
  void dispose(){
    //LIMPIAMOS LOS CONTROLADORES CUANDO EL WIDGET SE DESTRUYE
    _nameController.dispose();
    _emailController.dispose();
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
            child: ListView(
              children: <Widget>[

                //TEXTO COMENTARIOS
                const Text('Comentarios', style: TextStyle(fontSize: 30 ,fontWeight: FontWeight.bold),),

                // DIVIDOR ENTRE TEXTO COMENTARIOS Y FORMULARIO NOMBRE
                const Divider(
                  height: 20,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.grey,
                ),

                //TEXTBOX NOMBRE
                const SizedBox(height: 20),
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: "Nombre",
                    border: OutlineInputBorder(),
                  ),

                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Ingresa tu nombre';
                    }
                    return null;
                  },
                ),

                //TEXTBOX EMAIL
                const SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: "Correo Electronico",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Ingresa tu correo';
                    }
                    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)){
                      return 'Ingresa un correo valido';
                    }
                    return null;
                  },
                ),

                //TEXTBOX ASUNTO
                const SizedBox(height: 20),
                TextFormField(
                  controller: _AsuntoController,
                  decoration: const InputDecoration(
                    labelText: "Asunto",
                    border: OutlineInputBorder(),
                  ),

                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Ingresa el Asunto';
                    }
                    return null;
                  },
                ),

                /*AQUI AGREGAR EL TIPO DE COMENTARIO
                  Reporte
                  Sugerencia
                  Otro)*/

                /*RadioListTile <String>(
                  title: const Text('Reporte'),
                    value: Comentario.Reporte,
                    groupValue: _tipodeComent,
                    onChanged: onChanged)*/

                //TEXTBOX COMENTARIO
                const SizedBox(height: 20),
                TextFormField(
                  controller: _commentController,
                  decoration: const InputDecoration(
                    labelText: "Comentarios",
                    border: OutlineInputBorder(),
                  ),

                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Ingresa un comentario';
                    }
                    return null;
                  },
                ),

                //BOTON SUBMIT
                const SizedBox(height: 20),
                ElevatedButton(onPressed: _sumitForm, child: const Text('Enviar'),
                ),
              ],
            ),
        ),
      ),
    );
  }
}