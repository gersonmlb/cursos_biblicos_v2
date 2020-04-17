import 'package:lafedejesus/utilsAll/imports.dart';

class ListaDatos {
  final List<Leccion> dato;
  final List<Preguntas> prg;
  final List<Hacer> hcr;

  ListaDatos({this.dato, this.prg, this.hcr});

  factory ListaDatos.fromJson(List<dynamic> parsedJson, int number) {
    List<Leccion> data = new List<Leccion>();
    data = parsedJson.map((i) => Leccion.fromJson(i)).toList();

    List prgs = data[number].preguntas;
    List<Preguntas> listaPreguntas = new List<Preguntas>();
    listaPreguntas = prgs.map((i) => Preguntas.fromJson(i)).toList();

    List hcrs = data[number].hacer;
    List<Hacer> listaHacer = new List<Hacer>();
    listaHacer = hcrs.map((i) => Hacer.fromJson(i)).toList();

    return new ListaDatos(
      dato: data,
      prg: listaPreguntas,
      hcr: listaHacer,
    );
  }

  factory ListaDatos.fromJson2(List<dynamic> parsedJson) {
    List<Leccion> data = new List<Leccion>();
    data = parsedJson.map((i) => Leccion.fromJson(i)).toList();

    return new ListaDatos(
      dato: data,
    );
  }
}

class Leccion {
  final String id;
  final String leccion;
  final String titulo;
  final List<dynamic> preguntas;
  final List<dynamic> hacer;
  //final List adicional;

  Leccion({
    this.id,
    this.leccion,
    this.titulo,
    this.preguntas,
    this.hacer,
    //this.adicional
  });

  factory Leccion.fromJson(Map<String, dynamic> parsedJson) {
    var listsPreguntas = parsedJson['preguntas'] as List;
    var listaHacer = parsedJson['hacer'] as List;

    return new Leccion(
      id: parsedJson['_id'],
      leccion: parsedJson['leccion'],
      titulo: parsedJson['titulo'],
      preguntas: listsPreguntas,
      hacer: listaHacer,
      //preguntas: Preguntas.fromJson(parsedJson['preguntas']),
      //preguntas: preguntasList,
      //hacer: Hacer.fromJson(parsedJson['hacer']),
      //hacer: hacerList,
      //adicional: json['adicional']
    );
  }
}
