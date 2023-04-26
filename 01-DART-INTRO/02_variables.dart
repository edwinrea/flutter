void main() {
  
  final String pokemon = 'Ditto';
  
  final int hp = 100;
  
  final bool isAlive = true;
  
//   final abilities = <String>['impostor'];
  final List<String>abilities = ['impostor'];
  
  final sprites = <String>['ditto/front.png','ditto/back.png'];
  
//   dynamic == null   // Por defecto es nulo
  
  dynamic errorMessage = 'hola';
  
  errorMessage = 123;
  
  
  
  print("""
  
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  
  """);
    
}
