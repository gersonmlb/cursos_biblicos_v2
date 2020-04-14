import 'package:lafedejesus/utilsAll/imports.dart';

Future<String> _cargarJson() async {
  return await rootBundle.loadString("assets/db.json");
}

Future<ListaDatos> cargarDatos() async {
  String jsonString = await _cargarJson();
  final jsonResponse = json.decode(jsonString);
  return ListaDatos.fromJson(jsonResponse);
}

/*Future<Leccion> cargarDatos2() async {
  String jsonString = await _cargarJson();
  final jsonResponse = json.decode(jsonString);
  return Leccion.fromJson(jsonResponse);
}*/
/*
Future loadCrossword() async {
  String jsonCrossword = await _cargarJson();
  Leccion leccion = _parseJsonForCrossword(jsonCrossword);
  return leccion;
}

Leccion _parseJsonForCrossword(String jsonString) {
  List decoded = jsonDecode(jsonString);
  Map one = decoded[4];
  List<Preguntas> preguntas = new List<Preguntas>();
  for (Map word in one['preguntas']) {
    preguntas.add(
      new Preguntas(
          id: word['id'],
          subtitulo: word['subtitulo'],
          nomaudio: word['nomaudio'],
          audio: word['audio'],
          nomvideo: word['nomvideo'],
          video: word['video'],
          versiculo: word['versiculo'],
          verso: word['versover'],
          pregunta: word['prg'],
          respuesta: word['rpt']),
    );
  }
  return new Leccion(
      id: one['id'],
      leccion: one['leccion'],
      titulo: one['titulo'],
      preguntas: );
}*/