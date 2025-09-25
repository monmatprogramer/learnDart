abstract class Animal{
    void makeSound();
    void eat() => print('Eating...');
}


class DogUs implements Animal{
    @override
    String name;

    DogUs(this.name);

    @override
    void makeSound() => print('Woof!');

    @override
    void eat() => print("Dog is eating.");
}
