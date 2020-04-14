import 'package:lafedejesus/utilsAll/imports.dart';

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = color2;
    var path = Path();
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);

    paint.color = color1;
    var path1 = Path();
    path1.lineTo(size.width, size.height);
    path1.lineTo(size.height*8, 0);
    path1.close();
    canvas.drawPath(path1, paint);

    paint.color = color1;
    var path2 = Path();
    path2.lineTo(size.width, size.height);
    path2.lineTo(0, size.height/1.5);
    path2.close();
    canvas.drawPath(path2, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
