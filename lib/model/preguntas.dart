class Preguntas {
  final int id;
  final String subtitulo;
  final String nomaudio;
  final String audio;
  final String nomvideo;
  final String video;
  final String versiculo;
  final String verso;
  final String pregunta;
  final String respuesta;

  Preguntas(
      {this.id,
      this.subtitulo,
      this.nomaudio,
      this.audio,
      this.nomvideo,
      this.video,
      this.versiculo,
      this.verso,
      this.pregunta,
      this.respuesta});

  factory Preguntas.fromJson(Map<String, dynamic>  parsedJson) {
    return Preguntas(
        id: parsedJson['id'],
        subtitulo: parsedJson['subtitulo'],
        nomaudio: parsedJson['nomaudio'],
        audio: parsedJson['audio'],
        nomvideo: parsedJson['nomvideo'],
        video: parsedJson['video'],
        versiculo: parsedJson['versiculo'],
        verso: parsedJson['versover'],
        pregunta: parsedJson['prg'],
        respuesta: parsedJson['rpt']);
  }
  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{
      'id': id,
      'subtitulo' : subtitulo,
      'nomaudio' : nomaudio,
      'audio': audio,
      'nomvideo' : nomvideo,
      'video': video,
      'versiculo': versiculo,
      'versover': verso,
      'prg': pregunta,
      'rpt': respuesta
    };

    return map;
  }
}
