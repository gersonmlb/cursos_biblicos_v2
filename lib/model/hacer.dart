class Hacer {
  final int id;
  final String audio;
  final String video;
  final String versiculo;
  final String verso;
  final String pregunta;
  final String respuesta;

  Hacer(
      {this.id,
      this.audio,
      this.video,
      this.versiculo,
      this.verso,
      this.pregunta,
      this.respuesta});

  factory Hacer.fromJson(Map<String, dynamic> parsedJson) {
    return Hacer(
        id: parsedJson['id'],
        audio: parsedJson['audio'],
        video: parsedJson['video'],
        versiculo: parsedJson['versiculo'],
        verso: parsedJson['verso'],
        pregunta: parsedJson['prg'],
        respuesta: parsedJson['rpt']);
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{
      'id': id,
      'audio': audio,
      'video': video,
      'versiculo': versiculo,
      'verso': verso,
      'prg': pregunta,
      'rpt': respuesta
    };

    return map;
  }
}
