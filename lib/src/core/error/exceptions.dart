class ServerException implements Exception {
  final String message;
  const ServerException(this.message);
}

class NetworkException implements Exception {
  final String message;
  const NetworkException(this.message);
}

class TimeoutException implements Exception {
  final String message;
  const TimeoutException(this.message);
}

class UnauthorizedException implements Exception {
  final String message;
  const UnauthorizedException(this.message);
}

class ForbiddenException implements Exception {
  final String message;
  const ForbiddenException(this.message);
}

class NotFoundException implements Exception {
  final String message;
  const NotFoundException(this.message);
}

class UnknownException implements Exception {
  final String message;
  const UnknownException(this.message);
}
