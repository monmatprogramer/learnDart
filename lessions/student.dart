import 'school.dart';

class Student{
    //properties of student
    final String name;

    //Constructor
    const Student({required this.name});

    void enroll(School school){
        print('$name enrolled in ${school.name} at ${school.location}');
    }


}
