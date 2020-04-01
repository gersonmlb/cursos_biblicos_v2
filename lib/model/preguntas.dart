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
        verso: parsedJson['verso'],
        pregunta: parsedJson['pregunta'],
        respuesta: parsedJson['respuesta']);
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{
      'id': id,
      'audio': audio,
      'video': video,
      'versiculo': versiculo,
      'verso': verso,
      'pregunta': pregunta,
      'respuesta': respuesta
    };

    return map;
  }
}
