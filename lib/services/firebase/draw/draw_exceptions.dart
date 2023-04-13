class DrawStorageException implements Exception {
  const DrawStorageException();
}

class CouldNotCreateDrawException extends DrawStorageException {}

class CouldNotGetAllDrawsDrawException extends DrawStorageException {}

class CouldNotDeleteDrawException extends DrawStorageException {}
