import 'package:lafedejesus/utilsAll/imports.dart';

class LeccionView extends StatefulWidget {
  final int id;
  LeccionView({Key key, this.id}) : super(key: key);
  _LeccionView createState() => _LeccionView();
}

class _LeccionView extends State<LeccionView> {
  Future<ListaDatos> _lista;
  double height, width;

  @override
  void initState() {
    super.initState();
    _lista = cargarDatos();
  }

  @override
  Widget build(BuildContext context) {
    int number = widget.id;
    print(number);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          flexibleSpace: _truehead(number),
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

  Widget _truehead(int number) => Container(
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
