class Travel {
  String name;
  String location;
  String imgUrl;

  Travel(this.name, this.location, this.imgUrl);

  static List<Travel> generateTravelBlog() {
    return [
      Travel("Place 1", "Location 1", "assets/images/top1.jpg"),
      Travel("Place 2", "Location 2", "assets/images/top2.jpg"),
      Travel("Place 3", "Location 3", "assets/images/top3.jpg"),
      Travel("Place 4", "Location 4", "assets/images/top4.jpg"),
    ];
  }
  static List<Travel> generateMostPopular() {
    return [
      Travel("Place 5", "Location 5", "assets/images/bottom1.jpg"),
      Travel("Place 6", "Location 6", "assets/images/bottom2.jpg"),
      Travel("Place 7", "Location 7", "assets/images/bottom3.jpg"),
      Travel("Place 8", "Location 8", "assets/images/bottom4.jpg"),
    ];
  }
}
