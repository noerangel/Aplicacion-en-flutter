import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class Carrera1Page extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.orange);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _crearImagen(context),
          _crearTitulo(),
          _crearTexto(),
          _crearSubtitulo(),
          _crearTextoC(),
          _crearSubtituloP(),
          _crearTextoP(),
          
        ],
      ),
    ));
  }

  Widget _crearImagen(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GestureDetector(
        //onTap: ()=> Navigator.pushNamed(context, 'scroll'),
        child: Image(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfJBLdRTBWZGmgAdbyEa3gRqJV9DvUoZxiug&usqp=CAU'),
          height: 200.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        color: Colors.orange,
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Desarrollo de software', style: estiloTitulo),
                  SizedBox(height: 7.0),
                ],
              ),
            ),
            
          ], 
        ),
        
      ),
      
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        color: Colors.orange,
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Es una disciplina que estudia los componentes necesarios para la creación, gestión, mantenimiento y testeo de software computacional. El software puede entenderse como la programación lógica que todo sistema computacional necesita para funcionar apropiadamente y permitir al usuario disfrutar de aspectos como una interfaz amigable y las funciones que el programa realice. Este concepto se opone al de hardware, que representa todos los componentes físicos de un sistema virtual.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

  Widget _crearSubtitulo() {
    return SafeArea(
      child: Container(
        color: Colors.orange,
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                'Características como persona:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearTextoC() {
    return SafeArea(
      child: Container(
        color: Colors.orange,
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          children: [
            Text(
              "1.Capacidad de solucionar de problemas",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "2.Capacidad de ser autodidacta",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "3.Capacidad para nombrar",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "4.Capacidad de tratar con las personas",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            Divider(),
          ],
        ),
      ),
    );
  }

  Widget _crearSubtituloP() {
    return SafeArea(
      child: Container(
        color: Colors.orange,
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                'Proyectos suele trabajar:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearTextoP() {
    return SafeArea(
      child: Container(
        color: Colors.orange,
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          children: [
            Text(
              "1.Reunirse con los clientes y Gerentes de Proyecto para diseñar y desarrollar nuevos programas.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "2.Establecer parámetros y diseñar la arquitectura de nuevos programas",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "3.Establecer parámetros y diseñar la arquitectura de nuevos programas",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "4.Diseñar, escribir, leer, probar y corregir el código de nuevos programas",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "5.Realizar pruebas de medición de calidad y detectar errores en el desarrollo del programa.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            RaisedButton(
              color: Colors.orangeAccent,
              textColor: Colors.white,
              child: Row(
                children: [
                  Text("Dónde puedo estudiar esta carrera"),
                  Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
              onPressed: () async {
                const url =
                    'https://www.universia.net/mx/actualidad/orientacion-academica/mejores-universidades-mexico-estudiar-ingenieria-informatica-1138756.html';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'No se encontro el link $url';
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
