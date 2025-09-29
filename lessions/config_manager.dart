class ConfigManager {
    Map<String,dynamic> _connectConf = Map();

    ConfigManager._();

    static final ConfigManager instance = ConfigManager._();


    // Set configuration
    void setConfig(String key, String value){
         print(key);
        // _connectConf[$key] = $value;
    }

    // Get configuratio


}
