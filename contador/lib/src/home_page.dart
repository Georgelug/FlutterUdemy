import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // Se crea de manera final (inmutable) el atributo de tipo TextStyle para evitar reciclar codigo
  final estiloTexto = new TextStyle(fontSize: 25);
  @override
  Widget build(BuildContext context) {
    int cont = 10;
    /*
    Este metodo retorna un widget llamado Scaffold, el cual es el encargado de contoner TODO
    lo de la pagina principal.

    Pero Scaffold es un metodo por lo tanto requiere de parametros, los cuales se pasan por nombre.

    El primero es appBarr, este es un widget tambien, el cual se encarga de la parte de arriba de la pagina
    y a su vez recibe recibe dos parametros: el widget Text('Titulo'), y centerTitle = True. Por lo tanto esto hace que
    Se vea en nuestra app en la parte de arriba el texto centrado 'Titulo'.

    Finalmente Scaffold recibe el parametro de body un widget llamado center el cual recibe en el parametro child el widget Text('Hola Mundo')

    Final  
    */
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Numero de clicks: ',
            style: estiloTexto,
          ),
          Text(
            '$cont',
            style: estiloTexto,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        //Se crea el boton flotante azul el cual recibe por paramatros los widgets icon para el icono y el onPressed para definir que hara al momento de presionarlo
        child: Icon(Icons.add),
        onPressed: () {
          cont++;
        }, //onPressed se le pone una funcion anonima la cual es la hara la accion en caso de ser presionado el boton
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerFloat, //Este parametro se encarga de la localizacion del punto flotante
    );
  }
}
