class ConfigManager {
    // late final Map<String,dynamic> _connectConf;
    late final String name;
    ConfigManager._();

    static final ConfigManager instance = ConfigManager._();


    void setName(String newName){
        name = newName;
    }

    // Set configuration
    void setConfig(String key, String value){
    }

    // Get configuratio
    String getConfig(String key){
        return "value";
    }

}
