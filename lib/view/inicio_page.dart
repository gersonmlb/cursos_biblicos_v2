import 'package:lafedejesus/utilsAll/imports.dart';

class InicioPage extends StatefulWidget {
  @override
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  double height, width;


  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: width,
        height: height,
        margin: EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              // Gradient colors change according to set theme
              colors: isThemeCurrentlyDark(context)
                  ? [GradientColors.darkStart, GradientColors.darkEnd]
                  : [GradientColors.lightStart, GradientColors.lightEnd],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.clamp),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Text(
                      "Cursos Biblicos",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox.fromSize(
                child: PageTransformer(
                  pageViewBuilder: (context, visibilityResolver) {
                    return PageView.builder(
                      controller: PageController(viewportFraction: 0.85),
                      itemCount: parallaxCardItemsList.length,
                      itemBuilder: (context, index) {
                        final item = parallaxCardItemsList[index];
                        final url = parallaxCardItemsList[index].url;
                        final pageVisibility =
                            visibilityResolver.resolvePageVisibility(index);
                        final state = parallaxCardItemsList[index].estado;
                        return HomeCards(
                          item: item,
                          pageVisibility: pageVisibility,
                          url: url,
                          estado: state,
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
