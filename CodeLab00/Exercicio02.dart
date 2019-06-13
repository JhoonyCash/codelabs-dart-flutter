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


// Shape shapeFactory(String type){
// 	if (type == 'circle') return Circle(2);
// 	if (type == 'square') return Square(2);
// 	throw 'Forma invalida! $type';
// }



void main(){

	//Instanciando normalmente os objetos de 'circle' e 'square' 
	//final circle = Circle(2);
	//final square = Square(2);

	//Utilizando uma função de alto nivel para o Instanciamento
	//final circle = shapeFactory('circle');
	//final square = shapeFactory('square');
	
	final circle = Shape('circle');
	final square = Shape('square');
	print(circle.area);
	print(square.area);
}