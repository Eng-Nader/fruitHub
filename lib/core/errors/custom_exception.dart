class CustomException implements Exception {
  final String exceptionMessage;
  CustomException({required this.exceptionMessage});
  @override
  String toString() {
    return exceptionMessage;
  }
}
