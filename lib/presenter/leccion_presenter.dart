import 'package:lafedejesus/utils/imports.dart';

/*Future<String> _cargarJson() async {
  return await rootBundle.loadString("assets/lafedejesus.json");
}

Future<Null> cargarDatos(List<Leccion> lista) async {
  String jsonString = await _cargarJson();
  final jsonResponse = json.decode(jsonString);

  for(Map i in jsonResponse){
    lista.add(Leccion.fromJson(i));
  }
  return lista;
  /*String jsonString = await _cargarJson();
  final jsonResponse = json.decode(jsonString);
  return ListaDatos.fromJson(jsonResponse);*/
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