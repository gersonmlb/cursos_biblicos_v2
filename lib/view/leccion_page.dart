import 'package:lafedejesus/utils/imports.dart';

class LeccionView extends StatefulWidget {
  LeccionView({Key key}) : super(key: key);
  _LeccionView createState() => _LeccionView();
}

class _LeccionView extends State<LeccionView> {
  List<Leccion> _lista = [];
  /*List<ListaDatos> lista;
  Future<dynamic> ls;*/
  int number = 4;

  // Son datos de pruebas
  String vrs = "S. Mateo 24:3";
  String prt = "¿QUÉ PREGUNTARON LOS DISCÍPULOS DE JESÚS?";
  String vdo = "Video";
  String ado = "Audio";

  Future<String> _cargarJson() async {
    return await rootBundle.loadString("assets/lafedejesus.json");
  }

  Future<Null> _cargarDatos() async {
    String jsonString = await _cargarJson();
    final jsonResponse = json.decode(jsonString);

    for (Map i in jsonResponse) {
      _lista.add(Leccion.fromJson(i));
    }
  }

  @override
  void initState() {
    super.initState();
    _cargarDatos();
  }

  double height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        //flexibleSpace: _truehead(),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: color4,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            /*Container(
              child: body(context, width, 1, prt, vrs, vdo, ado, height, lista),
              width: width,
              //color: Colors.green,
            ),*/
            /*Container(
              child: body(context, width, 1, prt, vrs, vdo, ado, height, lista),
              width: width,
              //color: Colors.red,
            ),*/
            //Text(ls.toString())
          ],
        ),
      ),
    );
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
