import 'package:lafedejesus/utils/imports.dart';

Widget traerTitulo(BuildContext context, double width, double height,
        int number, var lista) =>
    FutureBuilder<ListaDatos>(
        future: lista,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return respuesta(width, height);
          } else {
            return Padding(
                padding: EdgeInsets.only(
                    left: width / 2.9, right: width / 9, top: height / 30),
                child: Text(
                  //Aqui logra traer el titulo de la leccion
                  snapshot.data.dato[number].titulo,
                  maxLines: 2,
                  textDirection: TextDirection.ltr,
                  textScaleFactor: 1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: color2,
                    fontFamily: 'GochiHand',
                    textBaseline: TextBaseline.alphabetic,
                    height: 1,
                  ),
                ));
          }
        });

Widget traerID(BuildContext context, double width, double height, int number,
        var lista) =>
    FutureBuilder<ListaDatos>(
        future: lista,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return respuesta(width, height);
          } else {
            return Padding(
              padding: EdgeInsets.only(left: height / 2.15, top: height / 35),
              child: Container(
                color: Colors.yellow,
                width: width * 2,
                height: height / 12,
                child: Row(
                  children: <Widget>[
                    RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          //Aqui logra traer el titulo de la leccion
                          'LECCIÓN',
                          textScaleFactor: 1.3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w900,
                              color: color3),
                        )),
                    RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          //Aqui logra traer el titulo de la leccion
                          snapshot.data.dato[number].leccion,
                          //"05",
                          textScaleFactor: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: color3),
                        )),
                  ],
                  textDirection: TextDirection.ltr,
                ),
              ),
            );
          }
        });

Widget textcurso(double width, double height) => Padding(
      padding: EdgeInsets.only(
          left: width / 10, right: width / 9, top: height / 19.6),
      child: Text(
        "CURSO BIBLICO",
        textScaleFactor: 0.9,
        style: TextStyle(color: color2, fontFamily: 'SHOWG'),
      ),
    );

Widget textlafe(double width, double height) => Padding(
      padding: EdgeInsets.only(
          left: width / 13, right: width / 9, top: height / 14.5),
      child: Text(
        "LA FE DE JESUS",
        textScaleFactor: 0.9,
        style: TextStyle(fontFamily: 'SHOWG', color: color1),
      ),
    );

Widget respuesta(double width, double height) => Padding(
      padding: EdgeInsets.only(
          left: width / 2.9, right: width / 9, top: height / 30),
      child: Text(
        "LA FE DE JESUS",
        maxLines: 2,
        textDirection: TextDirection.ltr,
        textScaleFactor: 1,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: color2,
          fontFamily: 'GochiHand',
          textBaseline: TextBaseline.alphabetic,
          height: 1,
        ),
      ),
    );