import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2(),
        ],
      ),
    );
  }

  Widget _pagina1() {

    //Stack enfocado a la direccion, coloca uno encima de otro :D
    //Los ultimos widgets en colocar seran los que esten mas cerca de conmigo
    return Stack(
      children: <Widget>[

        _colorFondo(),
        _imagenFondo(),
        _textos()

      ],

    );

  }

  Widget _colorFondo(){

    return Container(
      width: double.infinity, //Todo lo posible
      height: double.infinity, //Todo lo posible
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );

  }

  Widget _imagenFondo(){

    return Container(
      width: double.infinity, //Todo lo posible
      height: double.infinity, //Todo lo posible
      child: Image(
        image: AssetImage('assets/imagen.png'),
        fit: BoxFit.cover,
      ),
    );

  }

  Widget _textos(){

    final estiloTexto = TextStyle(
      color: Colors.white,
      fontSize: 50.0
    );

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text('11°', style: estiloTexto),
          Text('Miercoles', style: estiloTexto),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white,)

        ],
      ),
    );

  }

  Widget _pagina2() {
    
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),//Redondeados los bordes
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('Bienvenidos', style: TextStyle(fontSize: 20.0),),
            ),
          onPressed: (){},
        ),
      ),
    );

  }
}