import './session_repository.dart';

class SessionController{
    final SessionRepository _repository;

    SessionController({SessionRepository? repo}) :_repository = repo ?? SessionRepository();


    void sayHello(String name){
        _repository.printHello("Default");
    }

}

