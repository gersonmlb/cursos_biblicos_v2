import 'package:lafedejesus/utilsAll/imports.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  Future<ListaDatos> _listaLeccion;
  double height, width;

  @override
  void initState() {
    super.initState();
    _listaLeccion = cargarDatos2();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("La fé de Jesus"),
        backgroundColor: color1,
      ),
      body: cardClass(context, height, _listaLeccion),
    );
  }
}
