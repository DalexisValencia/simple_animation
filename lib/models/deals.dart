class Deal {
  final String name;
  final String image;
  final String price;
  final String description;
  final List<Nutrition> nutrition;
  Deal({
    this.name,
    this.image,
    this.price,
    this.description,
    this.nutrition,
  });
}

class Nutrition {
  final String name;
  final String amount;
  Nutrition({
    this.name,
    this.amount,
  });
}
