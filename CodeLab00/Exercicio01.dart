import 'dart:math';

class Rectangle {
  
  int largura;
  int altura;
  Point origen;
  
  Rectangle({this.origen = const Point(0, 0), 
             this.largura = 0, 
             this.altura = 0});
  @override
  String toString() => 'Origen: (${origen.x}, ${origen.y}), Largura: $largura, Altura: $altura';
  
  
}

main() {
  
  print(Rectangle(origen: const Point(10, 20), largura: 100, altura: 200));
  print(Rectangle(origen: const Point(10, 10)));
  print(Rectangle(largura: 200));
  print(Rectangle());
  
} 