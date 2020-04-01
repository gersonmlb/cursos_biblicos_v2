//import 'package:flutter_swiper/flutter_swiper.dart';
//import 'package:lafedejesus/model/leccion.dart';
import 'package:lafedejesus/utils/imports.dart';
//import 'package:lafedejesus/view/leccion_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          //backgroundImage: AssetImage('assets/alucard.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Alucard',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );*/

    /*final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit condimentum mauris id tempor. Praesent eu commodo lacus. Praesent eget mi sed libero eleifend tempor. Sed at fringilla ipsum. Duis malesuada feugiat urna vitae convallis. Aliquam eu libero arcu.',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            Text('data',
            style:TextStyle(fontSize: 16.0, color: Colors.white),)
          ],
        ),
      ),
    );*/

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /*alucard, welcome,lorem,*/
          Container(
            child: Text(
              "¿CUÁNTOS DIOSES HAY?",
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 16.5,
              ),
            ),
          ),
          Container(
            child: FlatButton(
              child: Text("Video"),
              onPressed: () {
                Navigator.of(context).pushNamed('leccion_page');
              },
            ),
          ),
          texto("Respuesta")
        ],
      ),
    );

    return Scaffold(
      body: body,
    );
    //return HomPage();
  }
}

Widget texto(String respuesta) {
  final texto = TextFormField(
    keyboardType: TextInputType.text,
    autofocus: false,
    decoration: InputDecoration(
      hintText: respuesta,
    ),
  );
  return texto;
}
/*
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<ListaDatos> lista;
  Future<ListaPreguntas> listaP;
  int number = 0;

  @override
  void initState() {
    super.initState();

    lista = cargarDatos();
    listaP = cargarPreguntas();
  }

  double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    /*
    return Scaffold(
      body: FutureBuilder<ListaDatos>(
          future: lista,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.red[900]),
                ),
              );
            } else {
              return Swiper(
                containerHeight: 500,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.orange[100],
                      border: Border.all(color: Color(0xFF858585)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            //Aqui logra traer el titulo de la leccion
                            snapshot.data.dato[0].titulo,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  //Aqui deberia traer la pregunta de la leccion
                                  child: Text(snapshot.data.dato[0].titulo,),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ); 
                },

                //control: new SwiperControl(),
              );
            }
          }),
      */
    return Container(
      color: backgroundColor,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            child:
                // _titleArt(),
                // _titleArt2(),
                //_traerID(),
            //_traerTitulo(),
            FlatButton(
                 child: Text("data"),
                  onPressed: () {
                    Navigator.of(context).pushNamed('pruebas');
                  },
                ),
            //Positioned(top: 40, left: 8.0, child: Icon(Icons.arrow_back_ios)),
            //Positioned(top: 40, right: 8.0, child: Icon(Icons.list)),
            height: 18,
            width: width,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 18,
            width: width,
            child: _traerTitulo(),
          ),
          SizedBox(
            height: 20,
          ),
          /*Container(
            height: 18,
            width: width,
            child: _traerPreguntas(),
          )*/
        ],
      ),
    );
  }

  Widget _respuesta() => Text(
        "LA FE DE JESUS",
        style: TextStyle(fontSize: 18),
      );

  Widget _traerTitulo() => Scaffold(
        body: FutureBuilder<ListaDatos>(
            future: lista,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return _respuesta();
              } else {
                return Text(
                  //Aqui logra traer el titulo de la leccion
                  snapshot.data.dato[number].titulo,
                  style: TextStyle(
                    fontSize: 18, 
                    color: Colors.green,
                    fontFamily: 'Nunito'),
                );
              }
            }),
      );

  Widget _traerID() => Container(
        child: Scaffold(
          body: FutureBuilder<ListaDatos>(
              future: lista,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return _respuesta();
                } else {
                  return Text(
                    //Aqui logra traer el titulo de la leccion
                    snapshot.data.dato[number].leccion,
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  );
                }
              }),
        ),
      );
      
  Widget _traerPreguntas() => Container(
        child: Scaffold(
          body: FutureBuilder<ListaPreguntas>(
              future: listaP,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return _respuesta();
                } else {
                  try{
                    return Text(
                    //Aqui logra traer el titulo de la leccion
                    snapshot.data.datoP[0].pregunta,
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  );

                  }on Exception{
                    setState(() {
                      return _respuesta();
                    });
                  }
                  
                }
              }),
        ),
      );
/*
  Widget _titleArt() => Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.only(
          bottom: .88 * height,
        ),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.lightBlue, //.withOpacity(0.3),
            //offset: Offset(0, 8),
            //blurRadius: 5.0
          ),
        ]),
      );

  Widget _titleArt2() => Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.only(
          bottom: .88 * height,
        ),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.green, //.withOpacity(0.3),
            //offset: Offset(0, 8),
            //blurRadius: 5.0
          ),
        ]),
      );*/
}

Future<String> _cargarJson() async {
  return await rootBundle.loadString("assets/lafedejesus.json");
}

Future<ListaDatos> cargarDatos() async {
  String jsonString = await _cargarJson();
  final jsonResponse = json.decode(jsonString);
  return ListaDatos.fromJson(jsonResponse);
}

Future<ListaPreguntas> cargarPreguntas() async {
  String jsonString = await _cargarJson();
  final jsonResponse = json.decode(jsonString);
  return ListaPreguntas.fromJson(jsonResponse);
}*/