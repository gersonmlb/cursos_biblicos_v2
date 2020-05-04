import 'dart:typed_data';
import 'package:lafedejesus/utilsAll/imports.dart';
import 'package:http/http.dart' as http;

class Base64 extends StatefulWidget {
  @override
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<Base64> {
  String _base64;

  @override
  void initState() {
    super.initState();
    (() async {
      http.Response response = await http.get(
        'https://flutter.io/images/flutter-mark-square-100.png',
      );
      if (mounted) {
        setState(() {
          _base64 = base64.encode(response.bodyBytes);
        });
      }
    })();
  }

  @override
  Widget build(BuildContext context) {
    if (_base64 == null)
      return new Container();
    Uint8List bytes = base64.decode(_base64);
    return new Scaffold(
      appBar: new AppBar(title: new Text('Example App')),
      body: new ListTile(
        leading: new Image.memory(bytes),
        title: new Text(_base64),
      ),
    );
  }
}
