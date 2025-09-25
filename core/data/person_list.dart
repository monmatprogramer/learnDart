class Person{
  final int id;
  final String name;
  Person({required this.id, required this.name});

  @override
  String toString(){
    return "Person(ID: $id, name: $name)";
  }
}

List<Person> listPerson = [
  Person(id: 1, name: "Mon"),
  Person(id: 2, name: 'Mat'),
  Person(id: 3, name: "Sokmean"),
  Person(id: 4, name: "Dara"),
  Person(id: 5, name: 'Srey'),
  Person(id: 6, name: "Vuth"),
  Person(id: 7, name: "Chan"),
  Person(id: 8, name: 'Rina'),
  Person(id: 9, name: "Kosal"),
  Person(id: 10, name: "Sokha"),
  Person(id: 11, name: 'Nita'),
  Person(id: 12, name: "Vann"),
  Person(id: 13, name: "Rith"),
  Person(id: 14, name: 'Sopheak'),
  Person(id: 15, name: "Malis"),
  Person(id: 16, name: "Bora"),
  Person(id: 17, name: 'Sarin'),
  Person(id: 18, name: "Chenda"),
  Person(id: 19, name: "Vichea"),
  Person(id: 20, name: 'Sokun'),
  Person(id: 21, name: "Rattanak"),
  Person(id: 22, name: "Sreymom"),
  Person(id: 23, name: 'Phalla'),
  Person(id: 24, name: "Kanha"),
  Person(id: 25, name: "Sokhorn"),
  Person(id: 26, name: 'Mony'),
  Person(id: 27, name: "Sovann"),
  Person(id: 28, name: "Chhay"),
  Person(id: 29, name: 'Sokly'),
  Person(id: 30, name: "Vannak"),
  Person(id: 31, name: "Sreyneang"),
  Person(id: 32, name: 'Rithy'),
  Person(id: 33, name: "Sokheng"),
  Person(id: 34, name: "Pisey"),
  Person(id: 35, name: 'Sokunthea'),
  Person(id: 36, name: "Sambath"),
  Person(id: 37, name: "Sreypov"),
  Person(id: 38, name: 'Vutha'),
  Person(id: 39, name: "Sokchea"),
  Person(id: 40, name: "Sreyroth"),
  Person(id: 41, name: 'Rachana'),
  Person(id: 42, name: "Soknimol"),
  Person(id: 43, name: "Sokvann"),
  Person(id: 44, name: 'Sokdavy'),
  Person(id: 45, name: "Sokpisey"),
  Person(id: 46, name: "Sokpanha"),
  Person(id: 47, name: 'Soknary'),
  Person(id: 48, name: "Sokleap"),
  Person(id: 49, name: "Sokvichea"),
  Person(id: 50, name: 'Sokmony'),
];


void findUserById(int userId){
  dynamic result = listPerson.where((person) => person.id == userId);
  dynamic result2 = listPerson.firstWhere((person) => person.id == userId);

  print(result);

  print(result2);//return object of person
}


Person find(int userId){
  dynamic result2 = listPerson.firstWhere((person) => person.id == userId, orElse:() => throw Exception("User not found"));
  return result2;
}
