//import 'package:lafedejesus/utils/imports.dart';
/*
AppData moviesFirstLoadFromJson(String str) {
  final jsonData = json.decode(str);
  return AppData.fromJson(jsonData);
}

String moviesFirstToJson(AppData data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class AppData {
  List<Movierecent> movierecent;

  AppData({
    this.movierecent,
  });

  factory AppData.fromJson(Map<String, dynamic> json) => new AppData(
        movierecent: new List<Movierecent>.from(
            json["movierecent"].map((x) => Movierecent.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "movierecent":
            new List<dynamic>.from(movierecent.map((x) => x.toJson())),
      };
}

*/
import 'package:lafedejesus/utils/imports.dart';

class ListaDatos {
  final List<Leccion> dato;
  final List<Preguntas> prg;

  ListaDatos({this.dato, this.prg});

  factory ListaDatos.fromJson(List<dynamic> parsedJson) {
    Map one = parsedJson[0];

    List<Leccion> data = new List<Leccion>();
    data = parsedJson.map((i) => Leccion.fromJson(i)).toList();

    List<Preguntas> prgs = new List<Preguntas>();
    for (Map word in one['preguntas']) {
      prgs.add(new Preguntas(id: word['id'], versiculo: word['versiculo']));
    }
/*
    List<Leccion> data = new List<Leccion>();
    for (Map words in one[Leccion]) {
      data.add(new Leccion(
        id: words["_id"],
        preguntas: prgs
      ));
    }*/

    /*List asad = data[0].preguntas.toList();
    print("ASDASDAS");
    print(prgs);
    print(Preguntas().pregunta);*/

    return new ListaDatos(
      dato: data,
    );
  }
}

class Leccion {
  final String id;
  final String leccion;
  final String titulo;
  final Preguntas preguntas;
  final Hacer hacer;
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
    /*var listP = parsedJson['preguntas'] as List;
    var listH = parsedJson['hacer'] as List;

    List<Preguntas> preguntasList =
        listP.map((i) => Preguntas.fromJson(i)).toList();
    List<Hacer> hacerList = listH.map((i) => Hacer.fromJson(i)).toList();*/

    return Leccion(
      id: parsedJson['id'],
      leccion: parsedJson['leccion'],
      titulo: parsedJson['titulo'],
      preguntas: Preguntas.fromJson(parsedJson['preguntas']),
      hacer: Hacer.fromJson(parsedJson['hacer']),
      //adicional: json['adicional']
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'leccion': leccion,
        'titulo': titulo,
        'preguntas': preguntas,
        'hacer': hacer,
        // 'adicional': adicional
      };
}
