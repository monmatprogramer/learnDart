class DioClient {
    const DioClient._();

    /*
    * excatly one instance
    * Includsion: Create one global instance of DioClient and resue it everywhere
    * */
    static final DioClient instance = DioClient._();
}
