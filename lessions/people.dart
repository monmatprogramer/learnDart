class People{
    final int numOfPerson;
    final String _phone;
    const People(this.numOfPerson, this._phone);

    String get phone => _phone;

    @override
    String toString() => "People($numOfPerson)";
}
