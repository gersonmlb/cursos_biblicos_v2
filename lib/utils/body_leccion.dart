import 'package:lafedejesus/utils/imports.dart';

Widget body(BuildContext context, double width, int id, String pregunta,
    String versiculo, String video, String audio, double height, var lista) {
  return FutureBuilder<ListaDatos>(
      future: lista,
      builder: (context, snapshot) {
        //List<Preguntas> asss = snapshot.data.dato[4].preguntas;
        if (!snapshot.hasData) {
          return respuesta(width, height);
        } else {
          return Container(
            width: width,
            height: width / 2.8,
            child: Column(
              children: <Widget>[
                // Este es la pregunta
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width / 30),
                  child: Text(
                    //asss.length.toString(),
                    id.toString() + ". " + pregunta,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: color3,
                      fontFamily: 'GochiHand',
                      textBaseline: TextBaseline.alphabetic,
                    ),
                  ),
                ),
                // Este es el area de items
                Padding(
                  padding: EdgeInsets.fromLTRB(width / 3, 0, 0, 0),
                  child: Stack(
                    children: <Widget>[
                      // Este es el versiculo
                      Padding(
                          padding: EdgeInsets.only(left: width / 12),
                          child: GestureDetector(
                            child: Text(
                              // Versiculo
                              "(" + versiculo + ")",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: color1,
                                fontFamily: 'GochiHand',
                                textBaseline: TextBaseline.alphabetic,
                                height: 1,
                              ),
                            ),
                            onTap: () {
                              showAlertDialogVersiculo(context, 1, versiculo);
                            },
                          )),

                      // Este es video
                      Padding(
                          padding: EdgeInsets.only(left: width / 2.4),
                          child: GestureDetector(
                            // Video
                            child: Icon(
                              Icons.ondemand_video,
                              color: color1,
                            ),
                            onTap: () {
                              showAlertDialogVideo(context);
                              //Navigator.of(context).pushNamed('pruebas');
                            },
                          )),

                      // Este es el audio
                      Padding(
                          padding: EdgeInsets.only(left: width / 2),
                          child: GestureDetector(
                            // Audio
                            child: Icon(
                              Icons.music_video,
                              color: color1,
                            ),
                            onTap: () {
                              showAlertDialogAudio(context, 1,
                                  "https://www.w3schools.com/tags/horse.mp3");
                              //Navigator.of(context).pushNamed('pruebas2');
                            },
                          )),
                    ],
                  ),
                ),

                // Este es la respuesta
                Padding(
                  padding: EdgeInsets.only(left: width / 35, right: width / 5),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: 'Respuesta',
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      });
}
