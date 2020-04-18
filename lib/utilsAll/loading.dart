import 'package:lafedejesus/utilsAll/imports.dart';

class Loading extends StatelessWidget {
  final double heigth;
  const Loading({Key key, this.heigth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heigths = heigth;
    return Container(
      height: heigths,
      color: Colors.white,
      child: Center(
          child: SpinKitCubeGrid(
        color: color1,
        size: 50.0,
      )),
    );
  }
}
