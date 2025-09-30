import 'package:intl/intl.dart';

class ConfigManager {
    static const String appName = "Super Shop";
    final Map<String, Map<String, dynamic>> languages = {
        "en": {"hello": "Hello", "thank_you": "Thank you", "goodbye": "Goodbye"},
        "km": {"hello": "សួស្តី", "thank_you": "អរគុណ", "goodbye": "លាហើយ"},
        "zh": {"hello": "你好", "thank_you": "谢谢", "goodbye": "再见"}
    };


    ConfigManager._();

    static final ConfigManager instance = ConfigManager._();

    void log(String message){
        print("[${DateFormat('yyyy-MM-dd H:mm:ss').format(DateTime.now())}] $message");
    }

    void welcomeUser(String username){
        print("App Name: $appName");
        print("Wecome back, $username!");
    }

    void translate(String key){
        print("translate is called");
        var result2 = languages.entries.where((keyTran){
            return keyTran.key == key;
        });
        result2.forEach((re) => print(re.value['hello']) );
    }
}
