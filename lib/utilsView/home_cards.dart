import 'package:lafedejesus/utilsAll/imports.dart';
import 'package:lafedejesus/view/base64.dart';

class HomeCards extends StatelessWidget {
  HomeCards({
    @required this.item,
    @required this.pageVisibility,
    @required this.url,
    @required this.estado
  });

  final HomeCardImages item;
  final PageVisibility pageVisibility;
  final String url;
  final int estado;

  Widget _applyTextEffects({
    @required double translationFactor,
    @required Widget child,
  }) {
    final double xTranslation = pageVisibility.pagePosition * translationFactor;

    return Opacity(
      opacity: pageVisibility.visibleFraction,
      child: Transform(
        alignment: FractionalOffset.topLeft,
        transform: Matrix4.translationValues(
          xTranslation,
          0.0,
          0.0,
        ),
        child: child,
      ),
    );
  }

  _buildTextContainer(BuildContext context) {
    var categoryText = _applyTextEffects(
      translationFactor: 300.0,
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: GradientText(
          item.body,
          shaderRect: Rect.fromLTWH(0.0, 0.0, 50.0, 50.0),
          gradient: isThemeCurrentlyDark(context)
              ? Gradients.coldLinear
              : Gradients.backToFuture,
          style: SubHeadingStylesGradient.white,
          textAlign: TextAlign.center,
        ),
      ),
    );

    var titleText = _applyTextEffects(
      translationFactor: 200.0,
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: GradientText(
          item.title,
          shaderRect: Rect.fromLTWH(0.0, 0.0, 50.0, 50.0),
          gradient: Gradients.haze,
          style: HeadingStylesGradient.white,
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Positioned(
      bottom: 50.0,
      left: 10.0,
      right: 10.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          categoryText,
          titleText,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var image = Image.asset(
      item.imagePath,
      fit: BoxFit.cover,
      alignment: FractionalOffset(
        0.5 + (pageVisibility.pagePosition / 3),
        0.5,
      ),
    );

    var imageOverlayGradient = DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            MyColors.black,
          ],
        ),
      ),
    );

    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 22.0,
          horizontal: 8.0,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Material(
            child: Stack(
              fit: StackFit.expand,
              children: [
                image,
                imageOverlayGradient,
                _buildTextContainer(context),
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        if (estado == 1) {
          Navigator.of(context).pushNamed(url);
        } else {
          Base64();
        }
      },
    );
  }
}
