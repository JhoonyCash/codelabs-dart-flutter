import 'dart:math';

abstract class Shape {
	
	factory Shape (String type) {
		if(type == 'circle') return Circle(2);
		if(type == 'square') return Square(2);
		throw 'Forma invalida! $type';
	}

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


class CircleMock implements Circle {
	num area;
	num radius;
}


<<<<<<< HEAD
Shape shapeFactory(String type){
=======
 Shape shapeFactory(String type){
>>>>>>> 634d6cd3687b55a05a887298509cee700ff3e671
 	if (type == 'circle') return Circle(2);
 	if (type == 'square') return Square(2);
 	throw 'Forma invalida! $type';
 }



void main(){

	//final circle = Circle(2);
	//final square = Square(2);


	//final circle = shapeFactory('circle');
	//final square = shapeFactory('square');
	
	final circle = Shape('circle');
	final square = Shape('square');
	print(circle.area);
	print(square.area);
}
