class Logger {
    const Logger._();

    //instance
    static final Logger instance = Logger._();

    void log(String mg){
        print('[LOG]: $mg');
    }
}

