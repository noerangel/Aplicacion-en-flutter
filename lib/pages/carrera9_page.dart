import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class Carrera8Page extends StatelessWidget {
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
              'https://tec.mx/sites/default/files/styles/header_full/public/repositorio/Admisiones/LIT_2.jpg?itok=D5QPqrH6'),
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
                  Text('Inteligencia de Negocios', style: estiloTitulo),
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
          'Analizar datos y generar estrategias que les permitan a las empresas mejorar su rentabilidad, ll??mese productividad, ganancias, clima organizacional, etc??tera.',
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
                'Caracter??sticas como persona:',
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
              "1.Dise??ar soluciones personalizadas.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "2.Dise??ar soluciones analiticas.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "3.Habilidades de gesti??n en el comportamiento del consumidor y el mercado.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "4.Mantener o actualizar las herramientas de inteligencia de negocios.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "5.Identificar o monitorizar clientes actuales y potenciales.",
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
              "1.Inform??tica (administraci??n de base de datos, dise??o de plataformas de anal??tica).",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "2.Mercadotecnia (an??lisis de tendencias de mercado, evaluaci??n de servicio y seguimiento a clientes, anal??tica de redes sociales).",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "3.Finanzas (medici??n de riesgos de mercado, evaluaci??n de proyectos de inversi??n).",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "4.Recursos humanos (selecci??n de empleados, medici??n de clima organizacional).",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            RaisedButton(
              color: Colors.orangeAccent,
              textColor: Colors.white,
              child: Row(
                children: [
                  Text("D??nde puedo estudiar esta carrera"),
                  Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
              onPressed: () async {
                const url =
                    'https://universidadesdemexico.mx/universidades/universidad-iberoamericana/licenciatura-en-inteligencia-de-negocios';
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
