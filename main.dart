import 'dart:core';
import 'dart:io';
import 'lessions/address.dart';
import 'lessions/author.dart';
import 'lessions/book.dart';
import 'lessions/car.dart';
import 'lessions/config_manager.dart';
import 'lessions/engine.dart';
import 'lessions/music.dart';
import 'lessions/order.dart';
import 'lessions/person.dart';
import 'lessions/monk.dart';
import 'lessions/product.dart';
import 'lessions/school.dart';
import 'lessions/student.dart';


//Initialized constructor
class Error {
  final String _message;
  Error(String message) : _message = message {
    print("constructure.");
  }

  @override
  String toString() => _message;
}

int sum(dynamic num1, dynamic num2) {
  // Add try catch
  try {
    return num1 + num2;
  } catch (e, s) {
    print("🌳s: $s");
    return 0;
  }
}

void main() {
  menu();
  // ConfigManager.instance.translate("zh");
}
// Learn singleton
// 1. Menu to choose lanaguge to translate
void menu(){
  print("1.English");
  print("2.Khmer");
  print('3.Chiness');
  switch (int.parse(chooseMenu())) {
      case 1:
        print("English");
        ConfigManager.instance.translate('en');
        break;
      case 2:
        print("khmer");
        ConfigManager.instance.translate('km');
      break;
      case 3:
        print('chiness');
        ConfigManager.instance.translate('zh');
      break;
      default:
      print("invalid number");

    }
}
String chooseMenu(){
  stdout.write("Choose number: ");
  String choosedMeun = stdin.readLineSync() ?? " ";
  return choosedMeun;
}


// Learn about factory fromMap
// callMusic class
void callMusic(){
  // create a map
  const Map<String,dynamic> musicA = {
    'title': 'MusicA',
    'singBy': 'singer A'
  };
  // create object music
  Music music = Music.fromMap(musicA);
  print(music.title);
  print(music.singBy);
}

// return chain result
String name() => giveName();
String giveName () => "Mon Mat";


//Practice to use Future
Future<void> getCpuUsage() async{
  final result = await Process.run(
    'powershell',
    [
      '-command',
      "(Get-Counter '\\Processor(_Total)\\% Processor Time').CounterSamples.CookedValue"
    ],
    runInShell: true,
  );

  print(result.stdout);
  final value = result.stdout.toString().trim();
  print(value.runtimeType);
  print(double.tryParse(value).toString());
}

void cookNoodles(bool stoveOnOrOff){
  bool stoveOn = stoveOnOrOff;

  if(!stoveOn){
    throw 'Stove is OFF, cannot cook noodles!';
  }

  print("Cooking noodles...");
}
//--- Method chaning -------------
// 1. FLUTTER -> FLU
void captital2Letters(){
  final String letter = 'flutter';
  print(letter.toUpperCase().substring(0,3));
}
// 2. Not timeout
Future<String> slowOk() async{
  print('A1: slowOk started');
  await Future.delayed(const Duration(seconds: 1));
  print('A2: slowOk finishing');
  return 'OK';
}
Future<void> demoNoTimeout() async{
  print('A0: demoNoTimeOut begin');
  final result = await slowOk().timeout(const Duration(seconds: 3));
  print('A3: got result = $result');
  print('A4: demoNoTimeout end');
}
Future<String> verySlow() async{
  print('B1: veryslow started');
  await Future.delayed(const Duration(seconds: 1));
  print('B2: VerySlow finishing');
  return 'DONE';
}
Future<void> demoTimeoutThrow() async{
  print('B0: demoTimeoutThrow begin');
  try{
      final value = await verySlow().timeout(
          const Duration(seconds: 2),
          onTimeout: () => throw Exception('Timed out!'),
        );
      print('B3: got value = $value');
    }catch(e){
      print('B4: caught error = $e');
    }finally{
      print('B5: demoTimeoutThrow end');
    }
}
//--- Exercies for practicing Future and timeout()
// 1. login
Future<String> requestLogin() async{
  await Future.delayed(const Duration(seconds: 3));
  return "Logged in successful";
}
Future<void> demoRequestLogin() async{
  try{
      print('It is starting login...');
      final result = await requestLogin().timeout(
          const Duration(seconds:2),
          onTimeout: () => throw Exception('Server too slow, please try again'),
        );
      print(result);
    }catch(e){
      print('💥Ops: $e');
    }finally{
      print("Finish requesting.");
    }
}
// 2. Download
Future<String> requestDownload()async{
  print('Start download...');
  await Future.delayed(const Duration(seconds: 6));
  return "Download successful";
}
Future<void> demoDownload() async{
  try{
      final result = await requestDownload().timeout(
        const Duration(seconds: 5),
        onTimeout: () => throw Exception('Download failed, please check your internet'),
      );
      print(result);
    }catch(e){
      print('💥Ops: $e');
    }finally{
      print('Finish download.');
    }
}
// 3. Turn on or off light
Future<String> requestBulb({bool isTurnOn = false}) async{
  print('Start turn $isTurnOn ...');
  await Future.delayed(const Duration(seconds: 3));
  return "Your bulb is $isTurnOn";
}
Future<void> demoRequestBulb() async{
  try{
    final result = await requestBulb(isTurnOn: true).timeout(
      const Duration(seconds: 1),
      onTimeout: () => throw Exception('Bulb not responding, try again'),
    );
    print(result);
  }catch(e){
    print('💥Ops: $e');
  }finally{
    print("Finish operation");
  }
}
// 4. payment
Future<String> requestPayment() async{
  print('Request payment...');
  await Future.delayed(const Duration(seconds: 10));
  return "payment success message";
}
Future<void> demoRquestPayment() async{
  try{
    final String result = await requestPayment().timeout(
      const Duration(seconds: 5),
      onTimeout: () => throw Exception('Payment taking too long, please try again or contact support'),
    );
    print(result);
  }catch(e){


    print('💥Ops: $e');
  }finally{
    print("Finish operation");
  }
}
// 5. microservices
  //Order service

  bool isCloseOrderService(bool isClosed){
    if (isClosed) print("Order service is closed");
    else print('Order service is not closed');
    return isClosed;
  }

  Future<void> demoOrderService(bool isOrderClosed) async{
    if(isCloseOrderService(isOrderClosed)) await demoPaymentService();
  }
  // Payment service
  Future<bool> requestPaymentService() async{
    print('Request payment...');
    await Future.delayed(const Duration(seconds: 5));
    return true;
  }

  Future<void> demoPaymentService() async{
    bool isSuccess = false;
    try{
        final bool result = await requestPaymentService().timeout(
          const Duration(seconds: 3),
          onTimeout: () => throw Exception('Payment system unavailable'),
        );
        isSuccess = result;
        await printService();
        print('order is prcessed, receipt printed');
      }catch(e){
        isSuccess = false;
        print('⚠️ $e');
      }finally{
        if(isSuccess) print('😀 Thank you!');
        else print('😥 Failure');
      }
  }

  //Print Service
  Future<String> requestPrintService() async{
    print('Please wait, we are printting payment for you...');
    await Future.delayed(const Duration(seconds: 1));
    return "This is your receipt";
  }

  Future<void> printService() async{
    final result = await requestPrintService();
    print(result);
  }

//---- Exerices for throw error ---
// 1. divide number
void divide(int a, int b){
  if(b <= 0) throw 'Cannot divide by zero';
}

// 2. Check age
void checkAge(int age){
  if(age < 15) throw Exception('You are too young!');
  print('Welcome!');
}

// 3. Timeout newtwork
Future<void> timeout(int duration, Function call) async{
  if(duration > 3) throw "Timeout.";
  await Future.delayed(Duration(seconds: duration));
  call();
}



// Start to learn streaming
// 1. simple number stream
Stream<int> numberStream() async*{
  for(int i = 1; i<= 3; i++){
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

// Practice Stream exercies
// 1. Real-time progress bar for file download
Stream<int> progressDownload() async*{
  for(int i = 10; i<= 100; i+=10){
    await Future.delayed(const Duration(seconds: 1));
    yield i;

  }
  print("File download complete");
}

// Learn about 'cascade operations'
// * chain operations on the same object
class Car{
  String? model;
  String? make;

  void getInfo()
  {
    print('''
      model: $model,
      make: $make,
    ''');
  }
}

void callCar(){
  Car? car = null;
  car
  ?..model = "Camry"
  ..make = "Toyota"
  ..getInfo();
}

void getCascadeCollection(){
  var list = []
  ..add('Apple')
  ..add('Banana')
  ..add('Orange');
  list.forEach((l) => print("List: $l"));
}
// Practice about cascading
void callMonk(){
  final monk = Monk();
  monk.name = "MonMat";
  monk.state = true;
  monk.introduce();
}
// Practice class as param other class
// 1. Person has address
void callPerson(){
  Address address = Address(city: "Phnome Penh", country: "Cambodia");
  Person person = Person(name: "Mon Mat", age: 12, address: address);
  person.showInfo();
}

// 2. Car has engine
void callCarType(){
  CarEngine car = CarEngine();
  Engine engine = Engine(type: "Petrol");
  Engine engine2 = Engine(type: "Electric");
  car.start(engine);
  car.start(engine2);
}


// 3. Create library system
void callBook(){
  Author author = Author(name: "Georage Orwell", country: "United Kingdom");
  Book book = Book(title: "1998",author: author);
  book.showBookDetails();
}

// 4. create enrollment
void callStudent(){
  //Create school object
  School school = School(name: "SET University",location: "Phnom Penh");
  //Create object of student
  Student student = Student(name: "Nak");

  student.enroll(school);
  //Output: Nak enrolled in SET University at Phnom Penh
}

// 5. Call total price of produce
void calltTotalPrduce(){
  Product produce1 = Product(name: "Mac 2019", price: 2000);
  Product produce2 = Product(name: "iPhone 7", price: 1100);
  Product product3 = Product(name: "Nokia N70", price: 50);
  Order order1 = Order(products: [produce1,produce2,product3]);
  order1.showProduce();
}
