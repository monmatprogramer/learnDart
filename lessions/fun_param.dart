void sayHello(){
    print("Hello, dart!");
}


void executeMyFunction(Function task){
    print("I'm about to execute the function you gave me...");
    task();
    print("I'm done with the execution.");
}

typedef SumNum =  int Function(dynamic, dynamic );

void sumNumber(dynamic num1, int num2, SumNum sumTwoNum){
    print("===== Start to sum number =====");
    int result = sumTwoNum(num1,num2);
    print("Result: $result");
    print("========== END ================");
}
