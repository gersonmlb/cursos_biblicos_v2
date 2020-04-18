import 'package:lafedejesus/utilsAll/imports.dart';

Widget body(
    BuildContext context, double width, double height, int idL, var lista) {
  return SingleChildScrollView(
    child: FutureBuilder<ListaDatos>(
        future: lista,
        builder: (context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return Loading();
          } else {
            int lengthPrg = snapshot.data.prg.length;
            int lengthHcr = snapshot.data.hcr.length;
            return Container(
              height: height / 1.1,
              child: ListView.builder(
                  itemCount: lengthPrg,
                  itemBuilder: (BuildContext context, int i) {
                    // Body preguntas
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

                    var lllll;
                    if (i == lengthPrg) {
                      print("Llego al i == length");
                      lllll = Text("sdadasdadsas");
                    }

                    return Column(
                      children: <Widget>[
                        bodyPreguntas(context, width, height, id, sub, prg, ver,
                            vev, noa, aud, nov, vid, rpt),
                        /*Container(
                          child: ListView.builder(
                            itemCount: lengthHcr

                          ),
                        )*/
                      ],
                    );

                  }),
            );
          }
        }),
  );
}
