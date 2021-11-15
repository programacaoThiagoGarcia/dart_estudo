class Point {
  double? x;
  double? y;
  late double z;

  // Constructor
  Point(double? x, double? y) {
    this.x = x;
    this.y = y;
  }

  // Constructor Named
  Point.Origin(){
    x = 0;
    y = 0;
    z = 0;
  }
}
