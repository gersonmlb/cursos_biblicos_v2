import 'package:lafedejesus/utilsAll/imports.dart';

class ListaDatos {
  final List<Leccion> dato;
  final List<Preguntas> prg;
  final List<Hacer> hcr;

  ListaDatos({this.dato, this.prg, this.hcr});

  factory ListaDatos.fromJson(List<dynamic> parsedJson) {
    
    List<Leccion> data = new List<Leccion>();
    data = parsedJson.map((i) => Leccion.fromJson(i)).toList();

    List prgs = data[4].preguntas;
    List<Preguntas> listaPreguntas = new List<Preguntas>();
    listaPreguntas = prgs.map((i)=> Preguntas.fromJson(i)).toList();

    List hcrs = data[4].hacer;
    List<Hacer> listaHacer = new List<Hacer>();
    listaHacer = hcrs.map((i)=> Hacer.fromJson(i)).toList();

    return new ListaDatos(
      dato: data,
      prg: listaPreguntas,
      hcr: listaHacer,
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
    //var listP = parsedJson['preguntas'] as List;
    //var listP = List<dynamic>();
    //var listH = parsedJson['hacer'] as List;

    //List<Preguntas> preguntasList = listP.map((i) => Preguntas.fromJson(i)).toList();
    //List<Hacer> hacerList = listH.map((i) => Hacer.fromJson(i)).toList();

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
