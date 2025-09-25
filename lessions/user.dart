class User{
    final String name;
    User(this.name);
}

class Permission{
    final String role;
    Permission(this.role);
}

//inheritance
class Monk extends User{
    Monk(String name) : super(name);
}


class Regular extends Permission{
    Regular(String role):super(role);
}
