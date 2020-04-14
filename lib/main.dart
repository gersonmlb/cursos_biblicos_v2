import 'package:lafedejesus/utilsAll/imports.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LA FE DE JESUS',
      routes:  getAplicationRoutes(context),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      /*onGenerateRoute:(settings){
        return MaterialPageRoute(
          builder: (BuildContext context ) => LoginPage(),
        );
      },*/
    );
  }
}
