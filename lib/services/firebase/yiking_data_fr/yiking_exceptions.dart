class YikingStorageException implements Exception {
  const YikingStorageException();
}

class CouldNotPopulateYikingException extends YikingStorageException {}

class CouldNotGetUniqueYikingException extends YikingStorageException {}

class CouldNotGetAllYikingsException extends YikingStorageException {}

class CouldNotDeleteYikingException extends YikingStorageException {}
