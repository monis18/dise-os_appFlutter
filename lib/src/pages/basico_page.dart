import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold
  );

  
  final estiloSubtitulo = TextStyle(
    fontSize: 18.0,
    color: Colors.grey
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(

            children: <Widget>[

            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),


          ],
        ),
        
      ),
    );
  }


  Widget _crearImagen(){
    return Container(
      width: double.infinity,//Tome todo el ancho
      child: Image(
        image: NetworkImage('https://cdn.pixabay.com/photo/2012/08/27/14/19/evening-55067__340.png'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }


  Widget _crearTitulo(){

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            
            Expanded(
              //Este widget toma todo el espacio que queda sin quitarle a los otros widgets
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Amanecer Montañesco', style: estiloTitulo,),
                  SizedBox(height: 7.0,),
                  Text('El mas bello Amanecer', style: estiloSubtitulo,)
                ],
              ),
            ),

            Icon(Icons.star, color: Colors.red, size: 30.0,),

            Text('41', style: TextStyle( fontSize: 20.0),)

          ],
        ),
      ),
    );
  }


  Widget _crearAcciones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,//Distribullelo de manera proporcional
      children: <Widget>[

        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me, 'Route'),
        _accion(Icons.share, 'Share'),

      ],
    );

  }


  Widget _accion (IconData icon, String texto){

    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0,),
        SizedBox(height: 5.0),
        Text(texto, style: TextStyle(fontSize: 16.0, color: Colors.blue),)
      ],
    );

  }


  Widget _crearTexto(){

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Hola yo tengo este espacio para rellenarlo conun monton de informacion inutil que solo sirva para estilizar lo que tengo que poner aqui Hola yo tengo este espacio para rellenarlo conun monton de informacion inutil que solo sirva para estilizar lo que tengo que poner aqui',
          textAlign: TextAlign.justify,
        ),
      ),
    );

  }

}