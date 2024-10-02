class ServerException implements Exception {
  final String message;

  ServerException({required this.message});
}

class OfflineException implements Exception {}

class WrongDataException implements Exception {}

class EmptyCacheException implements Exception {}
