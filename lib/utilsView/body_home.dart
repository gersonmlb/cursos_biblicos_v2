import 'package:lafedejesus/utilsAll/imports.dart';

Widget cardClass(BuildContext context, double heigth, var listaLeccion) {
  return SingleChildScrollView(
      child: FutureBuilder<ListaDatos>(
          future: listaLeccion,
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return Loading(heigth: heigth,);
            } else {
              int lengthLst = snapshot.data.dato.length;
              return Container(
                height: heigth / 1.12,
                child: ListView.builder(
                    itemCount: lengthLst,
                    itemBuilder: (BuildContext context, int i) {
                      return item(context, snapshot.data.dato[i].leccion,
                          snapshot.data.dato[i].titulo, i);
                    }),
              );
            }
          }));
}

Widget item(BuildContext context, String id, String titulo, int idL) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(4.0),
    child: Card(
      elevation: 4.0,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(
              width: 4.0,
              color: color1,
            ),
          ),
        ),
        child: InkWell(
          onTap: () {
            print("3: " + idL.toString());
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LeccionView(
                          id: idL,
                        )));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                    child: Text(
                      id + "  " + titulo,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: ShadowColors.dark,
                        fontFamily: 'GochiHand',
                        textBaseline: TextBaseline.alphabetic,
                        height: 1,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.chevron_right,
                  color: color1,
                ),
              ),
            ],
          ),
          splashColor: color1,
        ),
      ),
    ),
  );
}
