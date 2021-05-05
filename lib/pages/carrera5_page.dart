import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class Carrera5Page extends StatelessWidget {
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
              'https://universidadesdemexico.mx/img/article/donde-estudiar-seguridad-informatica-en-linea'),
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
                  Text('Seguridad Informatica', style: estiloTitulo),
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
          'Muchos aspectos de nuestra vida cotidiana y del campo empresarial se entrelazan cada vez más con la informatización y el internet, haciéndonos más vulnerables a los ataques informáticos. Delincuentes de la red o piratas cibernéticos también avanzan al paso de la tecnología y se requiere de profesionales o técnicos en seguridad cibernética para mantenerlos a raya.',
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
              "1.Tener habilidades sociales.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "2.Habilidades de comunicación.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "3.Habilidades de gestión.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "4.Ser una persona comprometida.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "5.Entender al delincuentea.",
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
              "1.Administrador de sistemas.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "2.Incident responder.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "3.Analista forense digital.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "4.Analista de investigación de mercados.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "5.Pentester.",
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
                    'https://www.dineroenimagen.com/2018-01-28/86697';
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
