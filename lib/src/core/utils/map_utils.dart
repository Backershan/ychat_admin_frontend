/// Map utilities following project standards
class MapUtils {
  /// Check if map is null or empty
  static bool isNullOrEmpty<K, V>(Map<K, V>? map) {
    return map == null || map.isEmpty;
  }
  
  /// Check if map is not null and not empty
  static bool isNotNullOrEmpty<K, V>(Map<K, V>? map) {
    return !isNullOrEmpty(map);
  }
  
  /// Get map or empty map
  static Map<K, V> getMapOrDefault<K, V>(Map<K, V>? map) {
    return map ?? <K, V>{};
  }
  
  /// Get value or default
  static V getValueOrDefault<K, V>(Map<K, V>? map, K key, V defaultValue) {
    return map?[key] ?? defaultValue;
  }
  
  /// Get value or null
  static V? getValueOrNull<K, V>(Map<K, V>? map, K key) {
    return map?[key];
  }
  
  /// Check if map contains key
  static bool containsKey<K, V>(Map<K, V>? map, K key) {
    return map?.containsKey(key) ?? false;
  }
  
  /// Check if map contains value
  static bool containsValue<K, V>(Map<K, V>? map, V value) {
    return map?.containsValue(value) ?? false;
  }
  
  /// Get map keys
  static List<K> getKeys<K, V>(Map<K, V>? map) {
    return map?.keys.toList() ?? <K>[];
  }
  
  /// Get map values
  static List<V> getValues<K, V>(Map<K, V>? map) {
    return map?.values.toList() ?? <V>[];
  }
  
  /// Get map entries
  static List<MapEntry<K, V>> getEntries<K, V>(Map<K, V>? map) {
    return map?.entries.toList() ?? <MapEntry<K, V>>[];
  }
  
  /// Get map size
  static int size<K, V>(Map<K, V>? map) {
    return map?.length ?? 0;
  }
  
  /// Check if map has minimum size
  static bool hasMinSize<K, V>(Map<K, V>? map, int minSize) {
    return size(map) >= minSize;
  }
  
  /// Check if map has maximum size
  static bool hasMaxSize<K, V>(Map<K, V>? map, int maxSize) {
    return size(map) <= maxSize;
  }
  
  /// Check if map has exact size
  static bool hasExactSize<K, V>(Map<K, V>? map, int exactSize) {
    return size(map) == exactSize;
  }
  
  /// Check if map is between min and max size
  static bool isBetweenSize<K, V>(Map<K, V>? map, int minSize, int maxSize) {
    final s = size(map);
    return s >= minSize && s <= maxSize;
  }
  
  /// Add key-value pair if not null
  static Map<K, V> addIfNotNull<K, V>(Map<K, V> map, K? key, V? value) {
    if (key != null && value != null) {
      map[key] = value;
    }
    return map;
  }
  
  /// Add all key-value pairs if not null
  static Map<K, V> addAllIfNotNull<K, V>(Map<K, V> map, Map<K, V>? other) {
    if (other != null) {
      map.addAll(other);
    }
    return map;
  }
  
  /// Remove null values
  static Map<K, V> removeNulls<K, V>(Map<K, V?> map) {
    final result = <K, V>{};
    map.forEach((key, value) {
      if (value != null) {
        result[key] = value;
      }
    });
    return result;
  }
  
  /// Remove keys
  static Map<K, V> removeKeys<K, V>(Map<K, V> map, List<K> keys) {
    final result = Map<K, V>.from(map);
    for (final key in keys) {
      result.remove(key);
    }
    return result;
  }
  
  /// Remove values
  static Map<K, V> removeValues<K, V>(Map<K, V> map, List<V> values) {
    final result = <K, V>{};
    map.forEach((key, value) {
      if (!values.contains(value)) {
        result[key] = value;
      }
    });
    return result;
  }
  
  /// Filter map by key
  static Map<K, V> filterByKey<K, V>(Map<K, V> map, bool Function(K) predicate) {
    final result = <K, V>{};
    map.forEach((key, value) {
      if (predicate(key)) {
        result[key] = value;
      }
    });
    return result;
  }
  
  /// Filter map by value
  static Map<K, V> filterByValue<K, V>(Map<K, V> map, bool Function(V) predicate) {
    final result = <K, V>{};
    map.forEach((key, value) {
      if (predicate(value)) {
        result[key] = value;
      }
    });
    return result;
  }
  
  /// Filter map by entry
  static Map<K, V> filterByEntry<K, V>(Map<K, V> map, bool Function(K, V) predicate) {
    final result = <K, V>{};
    map.forEach((key, value) {
      if (predicate(key, value)) {
        result[key] = value;
      }
    });
    return result;
  }
  
  /// Transform map keys
  static Map<K2, V> transformKeys<K1, K2, V>(Map<K1, V> map, K2 Function(K1) transform) {
    final result = <K2, V>{};
    map.forEach((key, value) {
      result[transform(key)] = value;
    });
    return result;
  }
  
  /// Transform map values
  static Map<K, V2> transformValues<K, V1, V2>(Map<K, V1> map, V2 Function(V1) transform) {
    final result = <K, V2>{};
    map.forEach((key, value) {
      result[key] = transform(value);
    });
    return result;
  }
  
  /// Transform map entries
  static Map<K2, V2> transformEntries<K1, K2, V1, V2>(Map<K1, V1> map, MapEntry<K2, V2> Function(K1, V1) transform) {
    final result = <K2, V2>{};
    map.forEach((key, value) {
      final entry = transform(key, value);
      result[entry.key] = entry.value;
    });
    return result;
  }
  
  /// Group list by key
  static Map<K, List<T>> groupBy<T, K>(List<T> list, K Function(T) keySelector) {
    final groups = <K, List<T>>{};
    for (final element in list) {
      final key = keySelector(element);
      groups.putIfAbsent(key, () => <T>[]).add(element);
    }
    return groups;
  }
  
  /// Group list by key with value selector
  static Map<K, List<V>> groupByWithValue<T, K, V>(List<T> list, K Function(T) keySelector, V Function(T) valueSelector) {
    final groups = <K, List<V>>{};
    for (final element in list) {
      final key = keySelector(element);
      final value = valueSelector(element);
      groups.putIfAbsent(key, () => <V>[]).add(value);
    }
    return groups;
  }
  
  /// Group list by key with count
  static Map<K, int> groupByWithCount<T, K>(List<T> list, K Function(T) keySelector) {
    final counts = <K, int>{};
    for (final element in list) {
      final key = keySelector(element);
      counts[key] = (counts[key] ?? 0) + 1;
    }
    return counts;
  }
  
  /// Group list by key with values and count
  static Map<K, Map<String, dynamic>> groupByWithValuesAndCount<T, K>(List<T> list, K Function(T) keySelector) {
    final groups = <K, Map<String, dynamic>>{};
    for (final element in list) {
      final key = keySelector(element);
      if (!groups.containsKey(key)) {
        groups[key] = {'count': 0, 'values': <T>[]};
      }
      groups[key]!['count'] = (groups[key]!['count'] as int) + 1;
      (groups[key]!['values'] as List<T>).add(element);
    }
    return groups;
  }
  
  /// Merge two maps
  static Map<K, V> merge<K, V>(Map<K, V> map1, Map<K, V> map2) {
    final result = Map<K, V>.from(map1);
    result.addAll(map2);
    return result;
  }
  
  /// Merge two maps with conflict resolution
  static Map<K, V> mergeWith<K, V>(Map<K, V> map1, Map<K, V> map2, V Function(V, V) conflictResolver) {
    final result = Map<K, V>.from(map1);
    map2.forEach((key, value) {
      if (result.containsKey(key)) {
        result[key] = conflictResolver(result[key] as V, value);
      } else {
        result[key] = value;
      }
    });
    return result;
  }
  
  /// Merge multiple maps
  static Map<K, V> mergeAll<K, V>(List<Map<K, V>> maps) {
    final result = <K, V>{};
    for (final map in maps) {
      result.addAll(map);
    }
    return result;
  }
  
  /// Merge multiple maps with conflict resolution
  static Map<K, V> mergeAllWith<K, V>(List<Map<K, V>> maps, V Function(V, V) conflictResolver) {
    final result = <K, V>{};
    for (final map in maps) {
      map.forEach((key, value) {
        if (result.containsKey(key)) {
          result[key] = conflictResolver(result[key] as V, value);
        } else {
          result[key] = value;
        }
      });
    }
    return result;
  }
  
  /// Get intersection of two maps
  static Map<K, V> intersection<K, V>(Map<K, V> map1, Map<K, V> map2) {
    final result = <K, V>{};
    map1.forEach((key, value) {
      if (map2.containsKey(key)) {
        result[key] = value;
      }
    });
    return result;
  }
  
  /// Get union of two maps
  static Map<K, V> union<K, V>(Map<K, V> map1, Map<K, V> map2) {
    final result = Map<K, V>.from(map1);
    result.addAll(map2);
    return result;
  }
  
  /// Get difference of two maps
  static Map<K, V> difference<K, V>(Map<K, V> map1, Map<K, V> map2) {
    final result = <K, V>{};
    map1.forEach((key, value) {
      if (!map2.containsKey(key)) {
        result[key] = value;
      }
    });
    return result;
  }
  
  /// Check if map contains all keys
  static bool containsAllKeys<K, V>(Map<K, V> map, List<K> keys) {
    return keys.every((key) => map.containsKey(key));
  }
  
  /// Check if map contains any key
  static bool containsAnyKey<K, V>(Map<K, V> map, List<K> keys) {
    return keys.any((key) => map.containsKey(key));
  }
  
  /// Check if map contains none of the keys
  static bool containsNoneKey<K, V>(Map<K, V> map, List<K> keys) {
    return !containsAnyKey(map, keys);
  }
  
  /// Check if map contains all values
  static bool containsAllValues<K, V>(Map<K, V> map, List<V> values) {
    return values.every((value) => map.containsValue(value));
  }
  
  /// Check if map contains any value
  static bool containsAnyValue<K, V>(Map<K, V> map, List<V> values) {
    return values.any((value) => map.containsValue(value));
  }
  
  /// Check if map contains none of the values
  static bool containsNoneValue<K, V>(Map<K, V> map, List<V> values) {
    return !containsAnyValue(map, values);
  }
  
  /// Get count of entries matching predicate
  static int count<K, V>(Map<K, V> map, bool Function(K, V) predicate) {
    int count = 0;
    map.forEach((key, value) {
      if (predicate(key, value)) {
        count++;
      }
    });
    return count;
  }
  
  /// Get sum of values
  static num sum<K>(Map<K, num> map) {
    return map.values.fold(0, (sum, value) => sum + value);
  }
  
  /// Get average of values
  static double average<K>(Map<K, num> map) {
    if (map.isEmpty) return 0.0;
    return sum(map) / map.length;
  }
  
  /// Get maximum value
  static V? max<K, V extends Comparable>(Map<K, V> map) {
    if (map.isEmpty) return null;
    return map.values.reduce((a, b) => a.compareTo(b) > 0 ? a : b);
  }
  
  /// Get minimum value
  static V? min<K, V extends Comparable>(Map<K, V> map) {
    if (map.isEmpty) return null;
    return map.values.reduce((a, b) => a.compareTo(b) < 0 ? a : b);
  }
  
  /// Get maximum value by key
  static K? maxByKey<K, V extends Comparable>(Map<K, V> map) {
    if (map.isEmpty) return null;
    return map.entries.reduce((a, b) => a.value.compareTo(b.value) > 0 ? a : b).key;
  }
  
  /// Get minimum value by key
  static K? minByKey<K, V extends Comparable>(Map<K, V> map) {
    if (map.isEmpty) return null;
    return map.entries.reduce((a, b) => a.value.compareTo(b.value) < 0 ? a : b).key;
  }
  
  /// Get first entry matching predicate
  static MapEntry<K, V>? firstWhere<K, V>(Map<K, V> map, bool Function(K, V) predicate) {
    for (final entry in map.entries) {
      if (predicate(entry.key, entry.value)) {
        return entry;
      }
    }
    return null;
  }
  
  /// Get last entry matching predicate
  static MapEntry<K, V>? lastWhere<K, V>(Map<K, V> map, bool Function(K, V) predicate) {
    MapEntry<K, V>? lastMatch;
    for (final entry in map.entries) {
      if (predicate(entry.key, entry.value)) {
        lastMatch = entry;
      }
    }
    return lastMatch;
  }
  
  /// Get all entries matching predicate
  static Map<K, V> where<K, V>(Map<K, V> map, bool Function(K, V) predicate) {
    final result = <K, V>{};
    map.forEach((key, value) {
      if (predicate(key, value)) {
        result[key] = value;
      }
    });
    return result;
  }
  
  /// Get all entries not matching predicate
  static Map<K, V> whereNot<K, V>(Map<K, V> map, bool Function(K, V) predicate) {
    final result = <K, V>{};
    map.forEach((key, value) {
      if (!predicate(key, value)) {
        result[key] = value;
      }
    });
    return result;
  }
  
  /// Transform map entries
  static Map<K2, V2> mapEntries<K1, K2, V1, V2>(Map<K1, V1> map, MapEntry<K2, V2> Function(K1, V1) transform) {
    final result = <K2, V2>{};
    map.forEach((key, value) {
      final entry = transform(key, value);
      result[entry.key] = entry.value;
    });
    return result;
  }
  
  /// Transform map keys
  static Map<K2, V> mapKeys<K1, K2, V>(Map<K1, V> map, K2 Function(K1) transform) {
    final result = <K2, V>{};
    map.forEach((key, value) {
      result[transform(key)] = value;
    });
    return result;
  }
  
  /// Transform map values
  static Map<K, V2> mapValues<K, V1, V2>(Map<K, V1> map, V2 Function(V1) transform) {
    final result = <K, V2>{};
    map.forEach((key, value) {
      result[key] = transform(value);
    });
    return result;
  }
  
  /// Flatten map of maps
  static Map<K, V> flatten<K, V>(Map<K, Map<K, V>> map) {
    final result = <K, V>{};
    map.forEach((key, value) {
      result.addAll(value);
    });
    return result;
  }
  
  /// Flatten map of lists
  static Map<K, V> flattenLists<K, V>(Map<K, List<V>> map) {
    final result = <K, V>{};
    map.forEach((key, value) {
      for (final item in value) {
        result[key] = item;
      }
    });
    return result;
  }
  
  /// Get distinct keys
  static List<K> distinctKeys<K, V>(Map<K, V> map) {
    return map.keys.toSet().toList();
  }
  
  /// Get distinct values
  static List<V> distinctValues<K, V>(Map<K, V> map) {
    return map.values.toSet().toList();
  }
  
  /// Get distinct entries
  static List<MapEntry<K, V>> distinctEntries<K, V>(Map<K, V> map) {
    return map.entries.toSet().toList();
  }
  
  /// Get distinct keys preserving order
  static List<K> distinctKeysPreserveOrder<K, V>(Map<K, V> map) {
    final seen = <K>{};
    return map.keys.where((key) => seen.add(key)).toList();
  }
  
  /// Get distinct values preserving order
  static List<V> distinctValuesPreserveOrder<K, V>(Map<K, V> map) {
    final seen = <V>{};
    return map.values.where((value) => seen.add(value)).toList();
  }
  
  /// Get distinct entries preserving order
  static List<MapEntry<K, V>> distinctEntriesPreserveOrder<K, V>(Map<K, V> map) {
    final seen = <MapEntry<K, V>>{};
    return map.entries.where((entry) => seen.add(entry)).toList();
  }
  
  /// Get distinct keys by key selector
  static List<K2> distinctKeysBy<K1, K2, V>(Map<K1, V> map, K2 Function(K1) keySelector) {
    return map.keys.map(keySelector).toSet().toList();
  }
  
  /// Get distinct values by value selector
  static List<V2> distinctValuesBy<K, V1, V2>(Map<K, V1> map, V2 Function(V1) valueSelector) {
    return map.values.map(valueSelector).toSet().toList();
  }
  
  /// Get distinct entries by entry selector
  static List<T> distinctEntriesBy<K, V, T>(Map<K, V> map, T Function(K, V) entrySelector) {
    return map.entries.map((entry) => entrySelector(entry.key, entry.value)).toSet().toList();
  }
  
  /// Get distinct keys by key selector preserving order
  static List<K2> distinctKeysByPreserveOrder<K1, K2, V>(Map<K1, V> map, K2 Function(K1) keySelector) {
    final seen = <K2>{};
    return map.keys.map(keySelector).where((key) => seen.add(key)).toList();
  }
  
  /// Get distinct values by value selector preserving order
  static List<V2> distinctValuesByPreserveOrder<K, V1, V2>(Map<K, V1> map, V2 Function(V1) valueSelector) {
    final seen = <V2>{};
    return map.values.map(valueSelector).where((value) => seen.add(value)).toList();
  }
  
  /// Get distinct entries by entry selector preserving order
  static List<T> distinctEntriesByPreserveOrder<K, V, T>(Map<K, V> map, T Function(K, V) entrySelector) {
    final seen = <T>{};
    return map.entries.map((entry) => entrySelector(entry.key, entry.value)).where((item) => seen.add(item)).toList();
  }
  
  /// Get distinct keys by key selector with count
  static Map<K2, int> distinctKeysByWithCount<K1, K2, V>(Map<K1, V> map, K2 Function(K1) keySelector) {
    final counts = <K2, int>{};
    for (final key in map.keys) {
      final transformedKey = keySelector(key);
      counts[transformedKey] = (counts[transformedKey] ?? 0) + 1;
    }
    return counts;
  }
  
  /// Get distinct values by value selector with count
  static Map<V2, int> distinctValuesByWithCount<K, V1, V2>(Map<K, V1> map, V2 Function(V1) valueSelector) {
    final counts = <V2, int>{};
    for (final value in map.values) {
      final transformedValue = valueSelector(value);
      counts[transformedValue] = (counts[transformedValue] ?? 0) + 1;
    }
    return counts;
  }
  
  /// Get distinct entries by entry selector with count
  static Map<T, int> distinctEntriesByWithCount<K, V, T>(Map<K, V> map, T Function(K, V) entrySelector) {
    final counts = <T, int>{};
    for (final entry in map.entries) {
      final transformedEntry = entrySelector(entry.key, entry.value);
      counts[transformedEntry] = (counts[transformedEntry] ?? 0) + 1;
    }
    return counts;
  }
  
  /// Get distinct keys by key selector with values
  static Map<K2, List<K1>> distinctKeysByWithValues<K1, K2, V>(Map<K1, V> map, K2 Function(K1) keySelector) {
    final groups = <K2, List<K1>>{};
    for (final key in map.keys) {
      final transformedKey = keySelector(key);
      groups.putIfAbsent(transformedKey, () => <K1>[]).add(key);
    }
    return groups;
  }
  
  /// Get distinct values by value selector with values
  static Map<V2, List<V1>> distinctValuesByWithValues<K, V1, V2>(Map<K, V1> map, V2 Function(V1) valueSelector) {
    final groups = <V2, List<V1>>{};
    for (final value in map.values) {
      final transformedValue = valueSelector(value);
      groups.putIfAbsent(transformedValue, () => <V1>[]).add(value);
    }
    return groups;
  }
  
  /// Get distinct entries by entry selector with values
  static Map<T, List<MapEntry<K, V>>> distinctEntriesByWithValues<K, V, T>(Map<K, V> map, T Function(K, V) entrySelector) {
    final groups = <T, List<MapEntry<K, V>>>{};
    for (final entry in map.entries) {
      final transformedEntry = entrySelector(entry.key, entry.value);
      groups.putIfAbsent(transformedEntry, () => <MapEntry<K, V>>[]).add(entry);
    }
    return groups;
  }
  
  /// Get distinct keys by key selector with first value
  static Map<K2, K1> distinctKeysByWithFirstValue<K1, K2, V>(Map<K1, V> map, K2 Function(K1) keySelector) {
    final groups = <K2, K1>{};
    for (final key in map.keys) {
      final transformedKey = keySelector(key);
      if (!groups.containsKey(transformedKey)) {
        groups[transformedKey] = key;
      }
    }
    return groups;
  }
  
  /// Get distinct values by value selector with first value
  static Map<V2, V1> distinctValuesByWithFirstValue<K, V1, V2>(Map<K, V1> map, V2 Function(V1) valueSelector) {
    final groups = <V2, V1>{};
    for (final value in map.values) {
      final transformedValue = valueSelector(value);
      if (!groups.containsKey(transformedValue)) {
        groups[transformedValue] = value;
      }
    }
    return groups;
  }
  
  /// Get distinct entries by entry selector with first value
  static Map<T, MapEntry<K, V>> distinctEntriesByWithFirstValue<K, V, T>(Map<K, V> map, T Function(K, V) entrySelector) {
    final groups = <T, MapEntry<K, V>>{};
    for (final entry in map.entries) {
      final transformedEntry = entrySelector(entry.key, entry.value);
      if (!groups.containsKey(transformedEntry)) {
        groups[transformedEntry] = entry;
      }
    }
    return groups;
  }
  
  /// Get distinct keys by key selector with last value
  static Map<K2, K1> distinctKeysByWithLastValue<K1, K2, V>(Map<K1, V> map, K2 Function(K1) keySelector) {
    final groups = <K2, K1>{};
    for (final key in map.keys) {
      final transformedKey = keySelector(key);
      groups[transformedKey] = key;
    }
    return groups;
  }
  
  /// Get distinct values by value selector with last value
  static Map<V2, V1> distinctValuesByWithLastValue<K, V1, V2>(Map<K, V1> map, V2 Function(V1) valueSelector) {
    final groups = <V2, V1>{};
    for (final value in map.values) {
      final transformedValue = valueSelector(value);
      groups[transformedValue] = value;
    }
    return groups;
  }
  
  /// Get distinct entries by entry selector with last value
  static Map<T, MapEntry<K, V>> distinctEntriesByWithLastValue<K, V, T>(Map<K, V> map, T Function(K, V) entrySelector) {
    final groups = <T, MapEntry<K, V>>{};
    for (final entry in map.entries) {
      final transformedEntry = entrySelector(entry.key, entry.value);
      groups[transformedEntry] = entry;
    }
    return groups;
  }
  
  /// Get distinct keys by key selector with count and values
  static Map<K2, Map<String, dynamic>> distinctKeysByWithCountAndValues<K1, K2, V>(Map<K1, V> map, K2 Function(K1) keySelector) {
    final groups = <K2, Map<String, dynamic>>{};
    for (final key in map.keys) {
      final transformedKey = keySelector(key);
      if (!groups.containsKey(transformedKey)) {
        groups[transformedKey] = {'count': 0, 'values': <K1>[]};
      }
      groups[transformedKey]!['count'] = (groups[transformedKey]!['count'] as int) + 1;
      (groups[transformedKey]!['values'] as List<K1>).add(key);
    }
    return groups;
  }
  
  /// Get distinct values by value selector with count and values
  static Map<V2, Map<String, dynamic>> distinctValuesByWithCountAndValues<K, V1, V2>(Map<K, V1> map, V2 Function(V1) valueSelector) {
    final groups = <V2, Map<String, dynamic>>{};
    for (final value in map.values) {
      final transformedValue = valueSelector(value);
      if (!groups.containsKey(transformedValue)) {
        groups[transformedValue] = {'count': 0, 'values': <V1>[]};
      }
      groups[transformedValue]!['count'] = (groups[transformedValue]!['count'] as int) + 1;
      (groups[transformedValue]!['values'] as List<V1>).add(value);
    }
    return groups;
  }
  
  /// Get distinct entries by entry selector with count and values
  static Map<T, Map<String, dynamic>> distinctEntriesByWithCountAndValues<K, V, T>(Map<K, V> map, T Function(K, V) entrySelector) {
    final groups = <T, Map<String, dynamic>>{};
    for (final entry in map.entries) {
      final transformedEntry = entrySelector(entry.key, entry.value);
      if (!groups.containsKey(transformedEntry)) {
        groups[transformedEntry] = {'count': 0, 'values': <MapEntry<K, V>>[]};
      }
      groups[transformedEntry]!['count'] = (groups[transformedEntry]!['count'] as int) + 1;
      (groups[transformedEntry]!['values'] as List<MapEntry<K, V>>).add(entry);
    }
    return groups;
  }
}

