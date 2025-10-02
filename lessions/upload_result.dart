class UploadResult {
    final bool success;
    final String message;
    final String? imageUrl;
    const UploadResult({required this.success, required this.message, this.imageUrl});
}
