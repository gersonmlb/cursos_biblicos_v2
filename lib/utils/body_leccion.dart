import 'package:lafedejesus/utils/imports.dart';

Widget body(
    BuildContext context, double width, double height, int idL, var lista) {
  return SingleChildScrollView(
    child: FutureBuilder<ListaDatos>(
        future: lista,
        builder: (context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return respuesta(width, height);
          } else {
            int length = snapshot.data.prg.length;
            return Container(
              height: height,
              child: ListView.builder(
                  itemCount: length,
                  //scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int i) {
                    var id = snapshot.data.prg[i].id.toString();
                    var sub = snapshot.data.prg[i].subtitulo;
                    var prg = snapshot.data.prg[i].pregunta;
                    var ver = snapshot.data.prg[i].versiculo;
                    var vev = snapshot.data.prg[i].verso;
                    var noa = snapshot.data.prg[i].nomaudio;
                    var aud = snapshot.data.prg[i].audio;
                    var nov = snapshot.data.prg[i].nomvideo;
                    var vid = snapshot.data.prg[i].video;
                    var rpt = snapshot.data.prg[i].respuesta;
                    if (sub == '') {
                      return body1(context, width, height, id, prg, ver, vev, noa, aud,
                          nov, vid, rpt);
                    } else {
                      return body2(context, width, height, id, sub, prg, ver,
                          vev, noa, aud, nov, vid, rpt);
                    }
                  }),
            );
          }
        }),
  );
}

Widget body1(
    BuildContext context,
    double width,
    double height,
    String id,
    String prg,
    String ver,
    String vev,
    String noa,
    String aud,
    String nov,
    String vid,
    String rpt) {
  return Container(
    width: width,
    height: height / 6,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Este es la pregunta
        _pregunta(width, id, prg),

        // Este es el area de items
        _items(context, width, ver, vev, noa, aud, nov, vid),

        // Este es la respuesta
        _respuesta(context, width, rpt)
      ],
    ),
  );
}

Widget body2(
    BuildContext context,
    double width,
    double height,
    String id,
    String sub,
    String prg,
    String ver,
    String vev,
    String noa,
    String aud,
    String nov,
    String vid,
    String rpt) {
  return Container(
    width: width,
    height: height / 5.6,
    margin: EdgeInsets.only(top: width / 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Subtitulo
        Container(
          margin: EdgeInsets.only(left: width / 40),
          child: Text(
            sub,
            softWrap: true,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: color1,
              fontFamily: 'GochiHand',
              textBaseline: TextBaseline.alphabetic,
              height: 1,
            ),
          ),
        ),
        // Este es la pregunta
        _pregunta(width, id, prg),

        // Este es el area de items
        _items(context, width, ver, vev, noa, aud, nov, vid),

        // Este es la respuesta
        _respuesta(context, width, rpt)
      ],
    ),
  );
}

// Widget sobre la Pregunta
Widget _pregunta(double width, var id, var pregunta) {
  return Container(
    margin: EdgeInsets.only(top: 10, left: width / 30, right: width / 18),
    child: Text(
      id + ". " + pregunta,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w500,
        color: color3,
        fontFamily: 'GochiHand',
        textBaseline: TextBaseline.alphabetic,
      ),
    ),
  );
}

// Este es el widget sobre los items
Widget _items(BuildContext context, double width, var ver, var vev, var noa,
    var aud, var nov, var vid) {
  return Padding(
    padding: EdgeInsets.fromLTRB(width / 3, 0, 0, 0),
    child: Stack(
      children: <Widget>[
        // Este es el versiculo
        Padding(
            padding: EdgeInsets.only(
              right: width / 12,
            ),
            child: GestureDetector(
              child: Text(
                // Versiculo
                "(" + ver + ")",
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
                showAlertDialogVersiculo(context, 1, ver, vev);
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
                showAlertDialogVideo(context, vid);
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
                showAlertDialogAudio(
                    context, 1, "https://www.w3schools.com/tags/horse.mp3");
                //Navigator.of(context).pushNamed('pruebas2');
              },
            )),
      ],
    ),
  );
}

Widget _respuesta(BuildContext context, double width, var rpt) {
  // Este es la respuesta sin nada
  return Padding(
    padding: EdgeInsets.only(left: width / 35, right: width / 5),
    child: TextFormField(
      initialValue: rpt,
      keyboardType: TextInputType.text,
      autofocus: false,
      scrollPadding: EdgeInsets.all(20.0),
      decoration: InputDecoration(
        hintText: "Respuesta",
      ),
    ),
  );
}
