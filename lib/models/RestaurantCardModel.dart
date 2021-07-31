class RestaurantsCardItem {
  final String name, image, deliveryTime;
  final bool status, favorite;
  final String description;
  final String rating;
  final int reviewsCount;
  final String deliveryPayment;
  RestaurantsCardItem(
      {this.name,
      this.image,
      this.deliveryTime,
      this.status,
      this.favorite,
      this.description,
      this.rating,
      this.reviewsCount,
      this.deliveryPayment});
}
