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


Future<Null> _cargarJson() async {
    return await rootBundle.loadString("assets/db.json");
  }

  Future<Null> _cargarDatos() async {
    String jsonString = await _cargarJson();
    final jsonResponse = json.decode(jsonString);

    for (Map i in jsonResponse) {
      _lista.add(Leccion.fromJson(i));
    }
    return _lista;
  }


*/
import 'package:lafedejesus/utils/imports.dart';

class ListaDatos {
  final List<Leccion> dato;
  final List<Preguntas> prg;

  ListaDatos({this.dato, this.prg});

  factory ListaDatos.fromJson(List<dynamic> parsedJson) {
    
    List<Leccion> data = new List<Leccion>();
    data = parsedJson.map((i) => Leccion.fromJson(i)).toList();

    List ssds = data[4].preguntas;
    List<Preguntas> listaPreguntass = new List<Preguntas>();
    listaPreguntass = ssds.map((i)=> Preguntas.fromJson(i)).toList();
    /*String ssdass = ssds.length.toString();
    print("SSDS " + ssdass);
    print(listaPreguntass);*/

    /*
    List<Preguntas> listaPreguntas = new List<Preguntas>();
    for (var word in one['preguntas']) {
      listaPreguntas.add(Preguntas(id: word['id'], versiculo: word['versiculo']));
    }*/

    /*for(Map i in parsedJson){
      listPreguntas.add(i);
    }*/

    /*List<Preguntas> prgs = new List<Preguntas>();
    for (Map word in one['preguntas']) {
      prgs.add(new Preguntas(id: word['id'], versiculo: word['versiculo']));
    }*/
/*
    List<Leccion> data = new List<Leccion>();
    for (Map words in one[Leccion]) {
      data.add(new Leccion(
        id: words["_id"],
        preguntas: prgs
      ));
    }*/

    //List asad = data[0].preguntas.toList();

    return new ListaDatos(
      dato: data,
      prg:listaPreguntass,
    );
  }
}

class Leccion {
  final String id;
  final String leccion;
  final String titulo;
  final List<dynamic> preguntas;
  final List<Hacer> hacer;
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
    //var listP = parsedJson['preguntas'] as List;
    //var listP = List<dynamic>();
    //var listH = parsedJson['hacer'] as List;

    //List<Preguntas> preguntasList = listP.map((i) => Preguntas.fromJson(i)).toList();
    //List<Hacer> hacerList = listH.map((i) => Hacer.fromJson(i)).toList();

    return new Leccion(
      id: parsedJson['id'],
      leccion: parsedJson['leccion'],
      titulo: parsedJson['titulo'],
      preguntas: listsPreguntas,
      //preguntas: Preguntas.fromJson(parsedJson['preguntas']),
      //preguntas: preguntasList,
      //hacer: Hacer.fromJson(parsedJson['hacer']),
      //hacer: hacerList,
      //adicional: json['adicional']
    );
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{
      'id': id,
      'leccion': leccion,
      'titulo' : titulo,
      'preguntas' : preguntas,
      'hacer' : hacer,
    };

    return map;
  }

}
