import 'item.dart';

class CheckoutService {
  final List<Item> carts;
  const CheckoutService({required this.carts});

  void test() {
    carts.forEach((cart) {
      print(cart);
    });
  }

  //Total price
  void totalPrice() {
    if (carts.isNotEmpty) {
      double sumResult = 0.0;
      carts.forEach((cart) {
        sumResult = sumResult + cart.price;
      });
      print("Total price: ${sumResult.round()}");
    }else{
        print("Sorry! you don't have produces to calulate.");
    }
  }
}
