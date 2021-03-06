import 'package:lafedejesus/utilsAll/imports.dart';
import 'package:lafedejesus/view/inicio_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes(BuildContext context) {
  return <String, WidgetBuilder>{
    ///[LOGIN PAGE]
    'login_page': (context) => LoginPage(),

    ///[INICO PAGE]
    'inicio_page': (context) => InicioPage(),

    ///[HOME PAGE]
    'home_page': (context) => HomePage(),

    ///[LECCION]
    'leccion_page': (context) => LeccionView(),

    ///[PAGINA DE PRUEBAS]
    'pruebas' : (context) => VideoPlayerScreen(),

    ///[PAGINA DE PRUEBAS2]
    'pruebas2' : (context) => ChewieAudioDemo(),    
  };
}