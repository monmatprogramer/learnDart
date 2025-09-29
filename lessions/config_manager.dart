class ConfigManager {
    static const String appName = "Super Shop";

    ConfigManager._();

    static final ConfigManager instance = ConfigManager._();



    void welcomeUser(String username){
        print("App Name: $appName");
        print("Wecome back, $username!");
    }

}
