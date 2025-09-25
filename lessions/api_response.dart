
enum Status {
    Init,
    Error,
    Success
}

class ApiResponse<T>{

    final String status;
    String? message;
    Map<String,dynamic>? data;
    T? person;


    ApiResponse._({required this.status, this.message, this.data});

    factory ApiResponse.init(){
        return ApiResponse._(status: "Init");
    }

    factory ApiResponse.error(){
        return ApiResponse._(status: "Error", message: "Throw errors in this state");

    }

    factory ApiResponse.success(){
        return ApiResponse._(status: "Success", data: {
            'id': 1,
            'uname': 'Mon Mat',
            'phone': '05030023'
            });

    }

    factory ApiResponse.person(person){
        return ApiResponse._(status: 'Success', data: {
                "data": person,
            });

    }

    bool get isSuccess => status == Status.error.name;
}
