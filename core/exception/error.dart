class Error implements Exception{
    final String message;
    final DateTime timestamp;
    final String? details;
    Error(this.message,{this.details}): timestamp = DateTime.now() {
        print("Error is: ");
        print("\tTimestamp: ${this.timestamp}");
        print("\tDetails: ${this.message}");
    }
}
