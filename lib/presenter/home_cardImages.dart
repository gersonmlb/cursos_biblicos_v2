class HomeCardImages {
  HomeCardImages({
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

final parallaxCardItemsList = <HomeCardImages>[
  HomeCardImages(
    title: 'La fé de Jesus',
    body: 'Curso Biblico',
    imagePath: 'assets/imagenes/lafe.jpg',
    url: 'home_page',
  ),
  HomeCardImages(
      title: 'Yo Creo',
      body: 'Curso Biblico',
      imagePath: 'assets/imagenes/yocreo.jpg',
      url: 'home_page'),
  HomeCardImages(
      title: 'Metodo de Cristo',
      body: 'Curso Biblico',
      imagePath: 'assets/imagenes/metododecristo.jpg',
      url: 'home_page'),
];
