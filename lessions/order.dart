import 'product.dart';

class Order{
    List<Product> products;
    Order ({required this.products});
    double totalPrice(){
        final double tp = 0.0;
        products.forEach((product){
            var temp = product.price;
            print("temp => $temp");
        });
        return tp;
    }

    void showProduce(){

        var temp = products.map((p) => p.name);
        print('temp in showProduct: $temp');
    }
}
