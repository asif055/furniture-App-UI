class homeContainer {
  final String title;

  final String imgUrl;

  homeContainer(
    this.imgUrl,
    this.title,
  );
}

class GridHomeItem {
  final String title;
  final String price;
  final String mainImgUrl;

  GridHomeItem(this.title, this.mainImgUrl, this.price);
}

class FavoriteItem {
  final String title;
  final String price;
  final String imgUrl;
  final String crossIconUrl;
  final String shopbagIconUrl;

  FavoriteItem(
    this.title,
    this.price,
    this.imgUrl,
    this.crossIconUrl,
    this.shopbagIconUrl,
  );
}
