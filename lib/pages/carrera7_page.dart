import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class Carrera7Page extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

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
              'https://ingresopasivointeligente.com/wp-content/uploads/2019/08/nanotecnologos-profesion-1152x768.jpg'),
          height: 200.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Nanotecnología', style: estiloTitulo),
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
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'La tecnología a nano-escala está ocupando de forma importante los esfuerzos de científicos en diversos campos. Antes parecía imposible pensar en el empleo de nano robots y “nano estructuras auto-replicantes” para combatir enfermedades o reforzar el sistema inmunológico de los humanos.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

  Widget _crearSubtitulo() {
    return SafeArea(
      child: Container(
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
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          children: [
            Text(
              "1.Poseer conocimientos, habilidades y aptitudes que le permitan un paso sólido durante su estancia y una conclusión exitosa del plan de estudios.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "2.Tener conocimiento a nivel medio superior de ciencias básicas: Matemáticas, física y química.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "3.Tener aptitudes para el trabajo en laboratorio e interés por la experimentación con dedicación y disciplina.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "4.Poseer creatividad e ingenio así como la mentalidad analítica critica.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "5.Manejar los instrumentos elementales de medición.",
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
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          children: [
            Text(
              "1.Desarrolla nuevos tratamientos médicos, medicamentos y herramientas biomédicas.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "2.Diseña y desarrolla robots a escala nanométrica, o nanorobots que realizan determinadas acciones en áreas médicas.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "3.Produce bienes y servicios con nanotecnología.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "4.Realiza control de calidad de los nanoproductos.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "5.Crea y diseña computadoras/ordenadores con velocidades mayores y mucho más pequeñas.",
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
                    'https://mextudia.com/carreras/nanotecnologia/';
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
