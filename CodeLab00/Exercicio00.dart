class Bicicleta{
  
  int cadencia;
  int _velocidade = 0;
  int get velocidade => _velocidade;
  int engrenagens;
  
  Bicicleta(this.cadencia, this.engrenagens);
            
  @override
  String toString() => 'Cadencia: $cadencia'+ "\n"+
                       'Velocidade: $_velocidade'+ "\n"+
                       'Engrenagens: $engrenagens ';
  
  
  
  
  void reduzVel(int decremento) {
    
    _velocidade -= decremento;
}

void aumentaVel(int incremento) {
  
   _velocidade += incremento;
}
  
}

void main() {
  
  var bike = Bicicleta(2, 1); 
  print(bike);
  
  print("\n");
  
  bike.aumentaVel(5);
  print(bike);
  
  print("\n");
  
  bike.reduzVel(3);
  print(bike);
  
}
