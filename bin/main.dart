import 'package:createFactory/createFactory.dart' as createFactory;

import 'dart:math';

abstract class Shape {
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Cant create $type.';
}

main(List<String> arguments) {
//  final circle = Circle(2);
//  final square = Square(2);

  final circle = shapeFactory('circle');
  final square = shapeFactory('square');

  print(circle.area);
  print(square.area);
  // print('Hello world: ${createFactory.calculate()}!');
}
