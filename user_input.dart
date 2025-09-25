import 'dart:io';
import 'core/exception/error.dart';


void inputFn(){
    stdout.write("Enter your first name: ");
    String? fn = stdin.readLineSync();
}

void inputLn(){
    stdout.write("Enter your last name: ");
    String? ls = stdin.readLineSync();
}

void inputAge(){
    stdout.write("Enter your age: ");
    String? inputAge = stdin.readLineSync();
    try{
        int age = int.parse(inputAge!);
        print("Parse to int successfully.");
        }catch(e){
            print("e: $e");
            Error(
                "Error converting string of age to int of age",
                );
        }
}
