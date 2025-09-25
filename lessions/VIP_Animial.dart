//Abstract & Polymorphism
abstract class VIPAnimal{
  void displayPrice(double price);
  void giveRating(int numOfStar);
}


mixin Sound{
  void makeSound(String sound){
    print("Sound is $sound");
  }
}



class Animal{
  final String _name;
  Animal(this._name);
}



//Dog
//Dog inherit from Animal
class Dog extends Animal with Sound  implements VIPAnimal{
  Dog({String? name}) : super(name??"Lucky");

  @override
  String toString() {
    return "_name : $_name";
  }

  @override
  void displayPrice(double price){
    print("Price: \$$price");
  }

  @override giveRating(int numOfStar){
    print("Number of rating: $numOfStar");
  }
}
//Cat
class Cat extends Animal with Sound{
  Cat({String? name}):super(name??"Chom");

  @override
  String toString(){
    return "_name : $_name";
  }
}
