
import 'item.dart';

class CheckoutService {
    final List<Item> carts;
    const CheckoutService({required this.carts});

    void test(){
        carts.forEach((cart){
                print(cart);
            }
        );
    }
}
