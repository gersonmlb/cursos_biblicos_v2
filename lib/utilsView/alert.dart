import 'package:lafedejesus/utilsAll/imports.dart';

void showAlertDialogVersiculo(
    BuildContext context, int id, String vers, String verv) {
  showDialog(
      context: context,
      builder: (buildcontext) {
        return AlertDialog(
          title: Container(
            child: Row(
              children: <Widget>[
                Text(
                  vers,
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
            child: SingleChildScrollView(
              child: Text(
                verv,
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

void showAlertDialogVideo(BuildContext context, String video) {
  //int id, String video) {
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
            child: VideoPlayerScreen(
              linkVideo: video,
            ),
            height: 235,
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
          content: Container(
            child: ChewieAudioDemo(
              linkAudio: audio,
            ),
            height: 20,
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

void showAlertDialogFailed(BuildContext context) {
  showDialog(
      context: context,
      builder: (buildcontext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          content: Container(
            height: 100,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.sentiment_dissatisfied, size: 60,),
                Text("Curso Biblico en proceso..."),
              ],
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
