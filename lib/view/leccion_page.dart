import 'package:lafedejesus/utils/imports.dart';

class LeccionView extends StatefulWidget {
  LeccionView({Key key}) : super(key: key);
  _LeccionView createState() => _LeccionView();
}

class _LeccionView extends State<LeccionView> {
  Future<ListaDatos> _lista;
  int number = 4;

  // Son datos de pruebas
  String vrs = "S. Mateo 24:3";
  String prt = "¿QUÉ PREGUNTARON LOS DISCÍPULOS DE JESÚS?";
  String vdo = "Video";
  String ado = "Audio";

  @override
  void initState() {
    super.initState();
    _lista = cargarDatos();
  }

  double height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          flexibleSpace: _truehead(),
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: color4,
          ),
        ),
        body: Container(
          child: body(context, width, height, 0, _lista),
          width: width,
          height: height,
          ));
  }

  Widget _truehead() => Container(
        width: width,
        child: Stack(
          children: <Widget>[
            // Colores
            _head(),
            // ID
            traerID(context, width, height, number, _lista),
            // TITULO
            traerTitulo(context, width, height, number, _lista),
            // CURSO BIBLICO
            textcurso(width, height),
            // LA FE DE JESUS
            textlafe(width, height),
          ],
        ),
      );
}

Widget _head() {
  return CustomPaint(
    painter: ShapesPainter(),
    child: Container(),
  );
}
