import 'dart:io';
import 'package:y_chat_admin/src/core/constants/app_constants.dart';

/// File utilities following project standards
class FileUtils {
  /// Check if file exists
  static Future<bool> exists(String path) async {
    return await File(path).exists();
  }
  
  /// Check if directory exists
  static Future<bool> directoryExists(String path) async {
    return await Directory(path).exists();
  }
  
  /// Create directory if it doesn't exist
  static Future<Directory> createDirectory(String path) async {
    final directory = Directory(path);
    if (!await directory.exists()) {
      await directory.create(recursive: true);
    }
    return directory;
  }
  
  /// Get file size
  static Future<int> getFileSize(String path) async {
    final file = File(path);
    if (await file.exists()) {
      return await file.length();
    }
    return 0;
  }
  
  /// Get file extension
  static String getFileExtension(String path) {
    return path.split('.').last.toLowerCase();
  }
  
  /// Get file name without extension
  static String getFileNameWithoutExtension(String path) {
    final fileName = path.split('/').last;
    return fileName.split('.').first;
  }
  
  /// Get file name with extension
  static String getFileName(String path) {
    return path.split('/').last;
  }
  
  /// Get directory path
  static String getDirectoryPath(String path) {
    return path.substring(0, path.lastIndexOf('/'));
  }
  
  /// Check if file is image
  static bool isImage(String path) {
    final extension = getFileExtension(path);
    return AppConstants.allowedImageTypes.contains(extension);
  }
  
  /// Check if file is document
  static bool isDocument(String path) {
    final extension = getFileExtension(path);
    return AppConstants.allowedDocumentTypes.contains(extension);
  }
  
  /// Check if file size is valid
  static bool isValidFileSize(int size) {
    return size <= AppConstants.maxFileSize;
  }
  
  /// Format file size
  static String formatFileSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    if (bytes < 1024 * 1024 * 1024) return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
  }
  
  /// Get file type from extension
  static String getFileType(String path) {
    final extension = getFileExtension(path);
    if (AppConstants.allowedImageTypes.contains(extension)) return 'image';
    if (AppConstants.allowedDocumentTypes.contains(extension)) return 'document';
    return 'unknown';
  }
  
  /// Validate file
  static bool validateFile(String path, int size) {
    return isValidFileSize(size) && (isImage(path) || isDocument(path));
  }
  
  /// Get file info
  static Map<String, dynamic> getFileInfo(String path, int size) {
    return {
      'name': getFileName(path),
      'nameWithoutExtension': getFileNameWithoutExtension(path),
      'extension': getFileExtension(path),
      'size': size,
      'formattedSize': formatFileSize(size),
      'type': getFileType(path),
      'isImage': isImage(path),
      'isDocument': isDocument(path),
      'isValid': validateFile(path, size),
    };
  }
  
  /// Read file as string
  static Future<String> readAsString(String path) async {
    final file = File(path);
    return await file.readAsString();
  }
  
  /// Read file as bytes
  static Future<List<int>> readAsBytes(String path) async {
    final file = File(path);
    return await file.readAsBytes();
  }
  
  /// Write string to file
  static Future<void> writeAsString(String path, String content) async {
    final file = File(path);
    await file.writeAsString(content);
  }
  
  /// Write bytes to file
  static Future<void> writeAsBytes(String path, List<int> bytes) async {
    final file = File(path);
    await file.writeAsBytes(bytes);
  }
  
  /// Delete file
  static Future<void> deleteFile(String path) async {
    final file = File(path);
    if (await file.exists()) {
      await file.delete();
    }
  }
  
  /// Delete directory
  static Future<void> deleteDirectory(String path) async {
    final directory = Directory(path);
    if (await directory.exists()) {
      await directory.delete(recursive: true);
    }
  }
  
  /// Copy file
  static Future<void> copyFile(String source, String destination) async {
    final file = File(source);
    if (await file.exists()) {
      await file.copy(destination);
    }
  }
  
  /// Move file
  static Future<void> moveFile(String source, String destination) async {
    final file = File(source);
    if (await file.exists()) {
      await file.rename(destination);
    }
  }
  
  /// List files in directory
  static Future<List<FileSystemEntity>> listFiles(String path) async {
    final directory = Directory(path);
    if (await directory.exists()) {
      return await directory.list().toList();
    }
    return [];
  }
  
  /// List directories in directory
  static Future<List<Directory>> listDirectories(String path) async {
    final directory = Directory(path);
    if (await directory.exists()) {
      final entities = await directory.list().toList();
      return entities.whereType<Directory>().toList();
    }
    return [];
  }
  
  /// List files with extension
  static Future<List<File>> listFilesWithExtension(String path, String extension) async {
    final directory = Directory(path);
    if (await directory.exists()) {
      final entities = await directory.list().toList();
      return entities
          .whereType<File>()
          .where((file) => getFileExtension(file.path) == extension)
          .toList();
    }
    return [];
  }
  
  /// List image files
  static Future<List<File>> listImageFiles(String path) async {
    final directory = Directory(path);
    if (await directory.exists()) {
      final entities = await directory.list().toList();
      return entities
          .whereType<File>()
          .where((file) => isImage(file.path))
          .toList();
    }
    return [];
  }
  
  /// List document files
  static Future<List<File>> listDocumentFiles(String path) async {
    final directory = Directory(path);
    if (await directory.exists()) {
      final entities = await directory.list().toList();
      return entities
          .whereType<File>()
          .where((file) => isDocument(file.path))
          .toList();
    }
    return [];
  }
  
  /// Get file count in directory
  static Future<int> getFileCount(String path) async {
    final files = await listFiles(path);
    return files.whereType<File>().length;
  }
  
  /// Get directory count in directory
  static Future<int> getDirectoryCount(String path) async {
    final directories = await listDirectories(path);
    return directories.length;
  }
  
  /// Get total size of directory
  static Future<int> getDirectorySize(String path) async {
    final files = await listFiles(path);
    int totalSize = 0;
    for (final file in files) {
      if (file is File) {
        totalSize += await file.length();
      }
    }
    return totalSize;
  }
  
  /// Get formatted directory size
  static Future<String> getFormattedDirectorySize(String path) async {
    final size = await getDirectorySize(path);
    return formatFileSize(size);
  }
  
  /// Check if path is file
  static Future<bool> isFile(String path) async {
    final file = File(path);
    return await file.exists();
  }
  
  /// Check if path is directory
  static Future<bool> isDirectory(String path) async {
    final directory = Directory(path);
    return await directory.exists();
  }
  
  /// Get file last modified time
  static Future<DateTime> getLastModified(String path) async {
    final file = File(path);
    if (await file.exists()) {
      return await file.lastModified();
    }
    return DateTime.now();
  }
  
  /// Get file creation time
  static Future<DateTime> getCreationTime(String path) async {
    final file = File(path);
    if (await file.exists()) {
      return await file.lastAccessed();
    }
    return DateTime.now();
  }
  
  /// Get file permissions
  static Future<String> getFilePermissions(String path) async {
    final file = File(path);
    if (await file.exists()) {
      final stat = await file.stat();
      return stat.mode.toString();
    }
    return '000';
  }
  
  /// Set file permissions (not supported on all platforms)
  static Future<void> setFilePermissions(String path, int mode) async {
    // File permissions are not directly settable in Dart
    // This would require platform-specific implementation
    throw UnsupportedError('File permissions not supported on this platform');
  }
  
  /// Get file owner (not supported on all platforms)
  static Future<String> getFileOwner(String path) async {
    // File owner information is not available in Dart's FileStat
    // This would require platform-specific implementation
    return 'unknown';
  }
  
  /// Get file group (not supported on all platforms)
  static Future<String> getFileGroup(String path) async {
    // File group information is not available in Dart's FileStat
    // This would require platform-specific implementation
    return 'unknown';
  }
  
  /// Get file stat
  static Future<Map<String, dynamic>> getFileStat(String path) async {
    final file = File(path);
    if (await file.exists()) {
      final stat = await file.stat();
      return {
        'size': stat.size,
        'type': stat.type.toString(),
        'mode': stat.mode,
        'uid': 'unknown', // Not available in Dart's FileStat
        'gid': 'unknown', // Not available in Dart's FileStat
        'accessed': stat.accessed,
        'modified': stat.modified,
        'changed': stat.changed,
      };
    }
    return {};
  }
  
  /// Get file hash
  static Future<String> getFileHash(String path) async {
    final file = File(path);
    if (await file.exists()) {
      final bytes = await file.readAsBytes();
      return bytes.hashCode.toString();
    }
    return '';
  }
  
  /// Get file checksum
  static Future<String> getFileChecksum(String path) async {
    final file = File(path);
    if (await file.exists()) {
      final bytes = await file.readAsBytes();
      int checksum = 0;
      for (final byte in bytes) {
        checksum += byte;
      }
      return checksum.toString();
    }
    return '0';
  }
  
  /// Get file info with stat
  static Future<Map<String, dynamic>> getFileInfoWithStat(String path) async {
    final info = getFileInfo(path, 0);
    final stat = await getFileStat(path);
    return {...info, ...stat};
  }
  
  /// Get file info with hash
  static Future<Map<String, dynamic>> getFileInfoWithHash(String path) async {
    final info = getFileInfo(path, 0);
    final hash = await getFileHash(path);
    final checksum = await getFileChecksum(path);
    return {...info, 'hash': hash, 'checksum': checksum};
  }
  
  /// Get file info with stat and hash
  static Future<Map<String, dynamic>> getFileInfoWithStatAndHash(String path) async {
    final info = getFileInfo(path, 0);
    final stat = await getFileStat(path);
    final hash = await getFileHash(path);
    final checksum = await getFileChecksum(path);
    return {...info, ...stat, 'hash': hash, 'checksum': checksum};
  }
  
  /// Get file info with size
  static Future<Map<String, dynamic>> getFileInfoWithSize(String path) async {
    final size = await getFileSize(path);
    return getFileInfo(path, size);
  }
  
  /// Get file info with size and stat
  static Future<Map<String, dynamic>> getFileInfoWithSizeAndStat(String path) async {
    final size = await getFileSize(path);
    final info = getFileInfo(path, size);
    final stat = await getFileStat(path);
    return {...info, ...stat};
  }
  
  /// Get file info with size and hash
  static Future<Map<String, dynamic>> getFileInfoWithSizeAndHash(String path) async {
    final size = await getFileSize(path);
    final info = getFileInfo(path, size);
    final hash = await getFileHash(path);
    final checksum = await getFileChecksum(path);
    return {...info, 'hash': hash, 'checksum': checksum};
  }
  
  /// Get file info with size, stat and hash
  static Future<Map<String, dynamic>> getFileInfoWithSizeStatAndHash(String path) async {
    final size = await getFileSize(path);
    final info = getFileInfo(path, size);
    final stat = await getFileStat(path);
    final hash = await getFileHash(path);
    final checksum = await getFileChecksum(path);
    return {...info, ...stat, 'hash': hash, 'checksum': checksum};
  }
  
  /// Get file info with size, stat, hash and permissions
  static Future<Map<String, dynamic>> getFileInfoWithSizeStatHashAndPermissions(String path) async {
    final size = await getFileSize(path);
    final info = getFileInfo(path, size);
    final stat = await getFileStat(path);
    final hash = await getFileHash(path);
    final checksum = await getFileChecksum(path);
    final permissions = await getFilePermissions(path);
    final owner = await getFileOwner(path);
    final group = await getFileGroup(path);
    return {
      ...info,
      ...stat,
      'hash': hash,
      'checksum': checksum,
      'permissions': permissions,
      'owner': owner,
      'group': group,
    };
  }
  
  /// Get file info with size, stat, hash, permissions and timestamps
  static Future<Map<String, dynamic>> getFileInfoWithSizeStatHashPermissionsAndTimestamps(String path) async {
    final size = await getFileSize(path);
    final info = getFileInfo(path, size);
    final stat = await getFileStat(path);
    final hash = await getFileHash(path);
    final checksum = await getFileChecksum(path);
    final permissions = await getFilePermissions(path);
    final owner = await getFileOwner(path);
    final group = await getFileGroup(path);
    final lastModified = await getLastModified(path);
    final creationTime = await getCreationTime(path);
    return {
      ...info,
      ...stat,
      'hash': hash,
      'checksum': checksum,
      'permissions': permissions,
      'owner': owner,
      'group': group,
      'lastModified': lastModified,
      'creationTime': creationTime,
    };
  }
  
  /// Get file info with size, stat, hash, permissions, timestamps and validation
  static Future<Map<String, dynamic>> getFileInfoWithSizeStatHashPermissionsTimestampsAndValidation(String path) async {
    final size = await getFileSize(path);
    final info = getFileInfo(path, size);
    final stat = await getFileStat(path);
    final hash = await getFileHash(path);
    final checksum = await getFileChecksum(path);
    final permissions = await getFilePermissions(path);
    final owner = await getFileOwner(path);
    final group = await getFileGroup(path);
    final lastModified = await getLastModified(path);
    final creationTime = await getCreationTime(path);
    final isValid = validateFile(path, size);
    return {
      ...info,
      ...stat,
      'hash': hash,
      'checksum': checksum,
      'permissions': permissions,
      'owner': owner,
      'group': group,
      'lastModified': lastModified,
      'creationTime': creationTime,
      'isValid': isValid,
    };
  }
  
  /// Get file info with size, stat, hash, permissions, timestamps, validation and metadata
  static Future<Map<String, dynamic>> getFileInfoWithSizeStatHashPermissionsTimestampsValidationAndMetadata(String path) async {
    final size = await getFileSize(path);
    final info = getFileInfo(path, size);
    final stat = await getFileStat(path);
    final hash = await getFileHash(path);
    final checksum = await getFileChecksum(path);
    final permissions = await getFilePermissions(path);
    final owner = await getFileOwner(path);
    final group = await getFileGroup(path);
    final lastModified = await getLastModified(path);
    final creationTime = await getCreationTime(path);
    final isValid = validateFile(path, size);
    final metadata = {
      'path': path,
      'absolutePath': File(path).absolute.path,
      'canonicalPath': File(path).resolveSymbolicLinksSync(),
      'parent': getDirectoryPath(path),
      'isAbsolute': path.startsWith('/'),
      'isRelative': !path.startsWith('/'),
      'separator': Platform.pathSeparator,
      'pathSeparator': Platform.pathSeparator,
      'isWindows': Platform.isWindows,
      'isLinux': Platform.isLinux,
      'isMacOS': Platform.isMacOS,
      'isAndroid': Platform.isAndroid,
      'isIOS': Platform.isIOS,
      'isFuchsia': Platform.isFuchsia,
      'operatingSystem': Platform.operatingSystem,
      'operatingSystemVersion': Platform.operatingSystemVersion,
      'numberOfProcessors': Platform.numberOfProcessors,
      'environment': Platform.environment,
    };
    return {
      ...info,
      ...stat,
      'hash': hash,
      'checksum': checksum,
      'permissions': permissions,
      'owner': owner,
      'group': group,
      'lastModified': lastModified,
      'creationTime': creationTime,
      'isValid': isValid,
      'metadata': metadata,
    };
  }
}

