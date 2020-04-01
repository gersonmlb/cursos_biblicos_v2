import 'package:lafedejesus/utils/imports.dart';
import 'package:lafedejesus/view/prueba2.dart';
import 'package:lafedejesus/view/pruebas.dart';

void showAlertDialogVersiculo(BuildContext context, int id, String versiculo) {
  showDialog(
      context: context,
      builder: (buildcontext) {
        return AlertDialog(
          title: Container(
            child: Row(
              children: <Widget>[
                Text(
                  versiculo,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: color4,
                    fontFamily: 'GochiHand',
                    textBaseline: TextBaseline.alphabetic,
                    height: 1.1,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Reina-Valera 1960",
                  style: TextStyle(
                    fontSize: 15,
                    //fontWeight: FontWeight.w100,
                    color: color4,
                    fontFamily: 'GochiHand',
                    textBaseline: TextBaseline.alphabetic,
                    height: 1.1,
                  ),
                ),
              ],
            ),
          ),
          titleTextStyle: TextStyle(color: color2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          content: Container(
            child: Text(
              "Y estando él sentado en el monte de los Olivos, los discípulos se le acercaron aparte, diciendo: Dinos, ¿cuándo serán estas cosas, y qué señal habrá de tu venida, y del fin del siglo?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w100,
                color: color3,
                fontFamily: 'Acme',
                textBaseline: TextBaseline.alphabetic,
                height: 1.1,
              ),
            ),
          ),
          actions: <Widget>[
            RaisedButton(
              child: Text(
                "CERRAR",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: color4,
            )
          ],
          backgroundColor: Colors.white,
        );
      });
}

void showAlertDialogVideo(BuildContext context, ){//int id, String video) {
  showDialog(
      context: context,
      builder: (buildcontext) {
        return AlertDialog(
          title: Text(
            'Explicación en video',
            style: TextStyle(
              fontSize: 20,
              //fontWeight: FontWeight.w100,
              color: color2,
              fontFamily: 'GochiHand',
              textBaseline: TextBaseline.alphabetic,
              height: 1.1,
            ),
          ),
          titleTextStyle: TextStyle(color: color2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          content: Container(
            child: VideoPlayerScreen(),
            height:300
          ),
          actions: <Widget>[
            RaisedButton(
              child: Text(
                "CERRAR",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: color4,
            )
          ],
          backgroundColor: Colors.white,
        );
      });
}

void showAlertDialogAudio(BuildContext context, int id, String audio) {
  showDialog(
      context: context,
      builder: (buildcontext) {
        return AlertDialog(
          title: Text(
            'Explicación en audio',
            style: TextStyle(
              fontSize: 20,
              //fontWeight: FontWeight.w100,
              color: color2,
              fontFamily: 'GochiHand',
              textBaseline: TextBaseline.alphabetic,
              height: 1.1,
            ),
          ),
          titleTextStyle: TextStyle(color: color2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          content:Container(child: ChewieAudioDemo(), height: 20,),
          actions: <Widget>[
            RaisedButton(
              child: Text(
                "CERRAR",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: color4,
            )
          ],
          backgroundColor: Colors.white,
        );
      });
}

