import 'address.dart';

class Person{
    final String name;
    final int age;
    final Address address;

    Person({required this.name, required this.age, required this.address});

    void showInfo(){
        print('Name: $name');
        address.showAddress();
    }

    @override
    String toString() => "Person($name, $age, $address)";
}
