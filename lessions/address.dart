class Address{
    final String city;
    final String country;

    const Address({required this.city, required this.country});

    void showAddress(){
        print('City: $city, Country: $country');
    }
}
