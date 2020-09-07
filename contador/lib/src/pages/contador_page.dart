import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _cont = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('State ful'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Numero de clicks: ',
              style: _estiloTexto,
            ),
            Text(
              '$_cont',
              style: _estiloTexto,
            ),
          ],
        )),
        floatingActionButton:
            _crearBotones() //onPressed se le pone una funcion anonima la cual es la hara la accion en caso de ser presionado el boton
        // floatingActionButtonLocation: FloatingActionButtonLocation
        //     .centerFloat, //Este parametro se encarga de la localizacion del punto flotante
        );
  }

  //Se crea el boton flotante azul el cual recibe por paramatros los widgets icon para el icono y el onPressed para definir que hara al momento de presionarlo
  //setState() es un metodo que permite actualizar el estado, no es neseario agregar nada dentro de la funcion anonima
  // El metodo SizedBox() sirve para dejar una cajita entre item y item , en esta caso se usa para separar entre uno y otro
  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _restar),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _sumar),
      ],
    );
  }

  // Metodos para los botones, uno suma, otro resta y el ultimo resetea
  void _sumar() => setState(() => _cont++);
  void _restar() => setState(() => _cont--);
  void _reset() => setState(() => _cont = 0);
}
