import 'package:intl/intl.dart';
class ConfigManager {
    static const String appName = "Super Shop";

    ConfigManager._();

    static final ConfigManager instance = ConfigManager._();

    void log(String message){
        print("[${DateFormat('yyyy-MM-dd H:mm:ss').format(DateTime.now())}] $message");
    }

    void welcomeUser(String username){
        print("App Name: $appName");
        print("Wecome back, $username!");
    }

}
