import 'package:lafedejesus/utilsAll/imports.dart';

Widget bodyhacer(
  int lengthHcr,
  var sdads,
) {
  return Container(
      child: ListView.builder(
          itemCount: lengthHcr,
          itemBuilder: (BuildContext context, int i) {
            return Text(sdads);
          }));
}
