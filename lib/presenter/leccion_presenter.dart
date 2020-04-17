import 'package:lafedejesus/utilsAll/imports.dart';

Future<String> _cargarJson() async {
  return await rootBundle.loadString("assets/db.json");
}

Future<ListaDatos> cargarDatos(int number) async {
  String jsonString = await _cargarJson();
  final jsonResponse = json.decode(jsonString);
  return ListaDatos.fromJson(jsonResponse, number);
}

Future<ListaDatos> cargarDatos2() async {
  String jsonString = await _cargarJson();
  final jsonResponse = json.decode(jsonString);
  return ListaDatos.fromJson2(jsonResponse);
}