class Item{
    final String name;
    final double price;
    const Item({required this.name, required this.price});

    @override
    String toString(){
        return "Item(name: $name, price: $price)";
    }
}
