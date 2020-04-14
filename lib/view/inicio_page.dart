import 'package:lafedejesus/utilsAll/imports.dart';

class ParallaxCardItem {
  ParallaxCardItem({
    this.title,
    this.body,
    this.imagePath,
    this.url,
  });

  final String title;
  final String body;
  final String imagePath;
  final String url;
}

final parallaxCardItemsList = <ParallaxCardItem>[
  ParallaxCardItem(
    title: 'La fé de Jesus',
    body: 'Curso Biblico',
    imagePath: 'assets/imagenes/lafe.jpg',
    url: 'home_page',
  ),
  ParallaxCardItem(
    title: 'Yo Creo',
    body: 'Curso Biblico',
    imagePath: 'assets/imagenes/lafe.jpg',
    url: 'home_page'
  ),
  ParallaxCardItem(
    title: 'Daniel',
    body: 'Curso Biblico',
    imagePath: 'assets/imagenes/lafe.jpg',
    url: 'home_page'
  ),
];

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;
var gradientStartColor;
var gradientEndColor;

class InicioPage extends StatefulWidget {
  @override
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              //gradient colors change according to set theme
              colors: isThemeCurrentlyDark(context)
                  ? [GradientColors.darkStart, GradientColors.darkEnd]
                  : [GradientColors.lightStart, GradientColors.lightEnd],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.clamp),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  top: 50.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    /*IconButton(
                      icon: Icon(EvaIcons.arrowIosBack),
                      tooltip: 'Go back',
                      color: isThemeCurrentlyDark(context)
                          ? MaterialColors.teal
                          : MyColors.light,
                      iconSize: 26.0,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),*/
                    GradientText(
                      'Cursos Biblicos',
                      shaderRect: Rect.fromLTWH(0.0, 0.0, 50.0, 50.0),
                      gradient: isThemeCurrentlyDark(context)
                          ? Gradients.coldLinear
                          : Gradients
                              .haze, //gradient colors change according to set theme
                      style: isThemeCurrentlyDark(context)
                          ? TitleStylesDefault.white
                          : TitleStylesDefault.black,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: SizedBox.fromSize(
                  size: Size.fromHeight(700.0),
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
                          return ParallaxCards(
                            item: item,
                            pageVisibility: pageVisibility,
                            url: url,
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
      ),
    );
  }
}
