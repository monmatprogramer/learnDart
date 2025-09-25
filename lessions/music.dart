class Music {
    final String title;
    final String singBy;

    factory Music.fromMap(Map<String,dynamic> map){
        return Music._internal(
            title: map['title'] as String,
            singBy: map['singBy'] as String,
        );
    }
    factory Music.fromMapStrict(Map<String, dynamic> map){
        if(map['title'].contains('MusicA')){
            print("Don't allow to insert this music");
            return Music._internal(title: "Default title", singBy: 'Default singer');
        }else{
            return Music._strict(title: map['title'], singBy: map['singBy']);
        }
    }

    // Private constructor
    Music._internal({required this.title, required this.singBy});
    Music._strict({required this.title, required this.singBy});
}

