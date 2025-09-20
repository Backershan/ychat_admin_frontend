import 'dart:math' as math;

/// List utilities following project standards
class ListUtils {
  /// Check if list is null or empty
  static bool isNullOrEmpty<T>(List<T>? list) {
    return list == null || list.isEmpty;
  }
  
  /// Check if list is not null and not empty
  static bool isNotNullOrEmpty<T>(List<T>? list) {
    return !isNullOrEmpty(list);
  }
  
  /// Get list or empty list
  static List<T> getListOrDefault<T>(List<T>? list) {
    return list ?? <T>[];
  }
  
  /// Get first element or null
  static T? firstOrNull<T>(List<T>? list) {
    return isNullOrEmpty(list) ? null : list!.first;
  }
  
  /// Get last element or null
  static T? lastOrNull<T>(List<T>? list) {
    return isNullOrEmpty(list) ? null : list!.last;
  }
  
  /// Get element at index or null
  static T? elementAtOrNull<T>(List<T>? list, int index) {
    if (isNullOrEmpty(list) || index < 0 || index >= list!.length) {
      return null;
    }
    return list[index];
  }
  
  /// Get list length
  static int length<T>(List<T>? list) {
    return list?.length ?? 0;
  }
  
  /// Check if list has minimum length
  static bool hasMinLength<T>(List<T>? list, int minLength) {
    return length(list) >= minLength;
  }
  
  /// Check if list has maximum length
  static bool hasMaxLength<T>(List<T>? list, int maxLength) {
    return length(list) <= maxLength;
  }
  
  /// Check if list has exact length
  static bool hasExactLength<T>(List<T>? list, int exactLength) {
    return length(list) == exactLength;
  }
  
  /// Check if list is between min and max length
  static bool isBetweenLength<T>(List<T>? list, int minLength, int maxLength) {
    final len = length(list);
    return len >= minLength && len <= maxLength;
  }
  
  /// Add element to list if not null
  static List<T> addIfNotNull<T>(List<T> list, T? element) {
    if (element != null) {
      list.add(element);
    }
    return list;
  }
  
  /// Add all elements to list if not null
  static List<T> addAllIfNotNull<T>(List<T> list, List<T>? elements) {
    if (elements != null) {
      list.addAll(elements);
    }
    return list;
  }
  
  /// Remove null elements from list
  static List<T> removeNulls<T>(List<T?> list) {
    return list.where((element) => element != null).cast<T>().toList();
  }
  
  /// Remove duplicates from list
  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }
  
  /// Remove duplicates preserving order
  static List<T> removeDuplicatesPreserveOrder<T>(List<T> list) {
    final seen = <T>{};
    return list.where((element) => seen.add(element)).toList();
  }
  
  /// Shuffle list
  static List<T> shuffle<T>(List<T> list) {
    final shuffled = List<T>.from(list);
    shuffled.shuffle();
    return shuffled;
  }
  
  /// Reverse list
  static List<T> reverse<T>(List<T> list) {
    return list.reversed.toList();
  }
  
  /// Sort list
  static List<T> sort<T>(List<T> list, [int Function(T, T)? compare]) {
    final sorted = List<T>.from(list);
    sorted.sort(compare);
    return sorted;
  }
  
  /// Sort list by key
  static List<T> sortBy<T, K>(List<T> list, K Function(T) keySelector) {
    return sort(list, (a, b) => (keySelector(a) as Comparable).compareTo(keySelector(b)));
  }
  
  /// Sort list by key descending
  static List<T> sortByDescending<T, K>(List<T> list, K Function(T) keySelector) {
    return sort(list, (a, b) => (keySelector(b) as Comparable).compareTo(keySelector(a)));
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
  
  /// Partition list by predicate
  static List<List<T>> partition<T>(List<T> list, bool Function(T) predicate) {
    final trueList = <T>[];
    final falseList = <T>[];
    for (final element in list) {
      if (predicate(element)) {
        trueList.add(element);
      } else {
        falseList.add(element);
      }
    }
    return [trueList, falseList];
  }
  
  /// Chunk list into smaller lists
  static List<List<T>> chunk<T>(List<T> list, int size) {
    if (size <= 0) return [list];
    final chunks = <List<T>>[];
    for (int i = 0; i < list.length; i += size) {
      chunks.add(list.sublist(i, math.min(i + size, list.length)));
    }
    return chunks;
  }
  
  /// Get random element from list
  static T? randomElement<T>(List<T>? list) {
    if (isNullOrEmpty(list)) return null;
    final random = math.Random();
    return list![random.nextInt(list.length)];
  }
  
  /// Get random elements from list
  static List<T> randomElements<T>(List<T> list, int count) {
    if (count <= 0) return [];
    final random = math.Random();
    final shuffled = List<T>.from(list);
    shuffled.shuffle(random);
    return shuffled.take(count).toList();
  }
  
  /// Get unique elements from list
  static List<T> unique<T>(List<T> list) {
    return list.toSet().toList();
  }
  
  /// Get unique elements preserving order
  static List<T> uniquePreserveOrder<T>(List<T> list) {
    final seen = <T>{};
    return list.where((element) => seen.add(element)).toList();
  }
  
  /// Get intersection of two lists
  static List<T> intersection<T>(List<T> list1, List<T> list2) {
    return list1.where((element) => list2.contains(element)).toList();
  }
  
  /// Get union of two lists
  static List<T> union<T>(List<T> list1, List<T> list2) {
    return {...list1, ...list2}.toList();
  }
  
  /// Get difference of two lists
  static List<T> difference<T>(List<T> list1, List<T> list2) {
    return list1.where((element) => !list2.contains(element)).toList();
  }
  
  /// Check if list contains all elements
  static bool containsAll<T>(List<T> list, List<T> elements) {
    return elements.every((element) => list.contains(element));
  }
  
  /// Check if list contains any element
  static bool containsAny<T>(List<T> list, List<T> elements) {
    return elements.any((element) => list.contains(element));
  }
  
  /// Check if list contains none of the elements
  static bool containsNone<T>(List<T> list, List<T> elements) {
    return !containsAny(list, elements);
  }
  
  /// Get count of elements matching predicate
  static int count<T>(List<T> list, bool Function(T) predicate) {
    return list.where(predicate).length;
  }
  
  /// Get sum of numbers
  static num sum<T extends num>(List<T> list) {
    return list.fold(0, (sum, element) => sum + element);
  }
  
  /// Get average of numbers
  static double average<T extends num>(List<T> list) {
    if (list.isEmpty) return 0.0;
    return sum(list) / list.length;
  }
  
  /// Get maximum value
  static T? max<T extends Comparable>(List<T> list) {
    if (list.isEmpty) return null;
    return list.reduce((a, b) => a.compareTo(b) > 0 ? a : b);
  }
  
  /// Get minimum value
  static T? min<T extends Comparable>(List<T> list) {
    if (list.isEmpty) return null;
    return list.reduce((a, b) => a.compareTo(b) < 0 ? a : b);
  }
  
  /// Get maximum value by key
  static T? maxBy<T, K extends Comparable>(List<T> list, K Function(T) keySelector) {
    if (list.isEmpty) return null;
    return list.reduce((a, b) => keySelector(a).compareTo(keySelector(b)) > 0 ? a : b);
  }
  
  /// Get minimum value by key
  static T? minBy<T, K extends Comparable>(List<T> list, K Function(T) keySelector) {
    if (list.isEmpty) return null;
    return list.reduce((a, b) => keySelector(a).compareTo(keySelector(b)) < 0 ? a : b);
  }
  
  /// Get first element matching predicate
  static T? firstWhere<T>(List<T> list, bool Function(T) predicate) {
    try {
      return list.firstWhere(predicate);
    } catch (e) {
      return null;
    }
  }
  
  /// Get last element matching predicate
  static T? lastWhere<T>(List<T> list, bool Function(T) predicate) {
    try {
      return list.lastWhere(predicate);
    } catch (e) {
      return null;
    }
  }
  
  /// Get index of first element matching predicate
  static int indexWhere<T>(List<T> list, bool Function(T) predicate) {
    return list.indexWhere(predicate);
  }
  
  /// Get index of last element matching predicate
  static int lastIndexWhere<T>(List<T> list, bool Function(T) predicate) {
    return list.lastIndexWhere(predicate);
  }
  
  /// Get indices of all elements matching predicate
  static List<int> indicesWhere<T>(List<T> list, bool Function(T) predicate) {
    final indices = <int>[];
    for (int i = 0; i < list.length; i++) {
      if (predicate(list[i])) {
        indices.add(i);
      }
    }
    return indices;
  }
  
  /// Get all elements matching predicate
  static List<T> where<T>(List<T> list, bool Function(T) predicate) {
    return list.where(predicate).toList();
  }
  
  /// Get all elements not matching predicate
  static List<T> whereNot<T>(List<T> list, bool Function(T) predicate) {
    return list.where((element) => !predicate(element)).toList();
  }
  
  /// Transform list elements
  static List<R> map<T, R>(List<T> list, R Function(T) transform) {
    return list.map(transform).toList();
  }
  
  /// Transform list elements with index
  static List<R> mapIndexed<T, R>(List<T> list, R Function(int, T) transform) {
    final result = <R>[];
    for (int i = 0; i < list.length; i++) {
      result.add(transform(i, list[i]));
    }
    return result;
  }
  
  /// Flatten list of lists
  static List<T> flatten<T>(List<List<T>> list) {
    return list.expand((element) => element).toList();
  }
  
  /// Get distinct elements by key
  static List<T> distinctBy<T, K>(List<T> list, K Function(T) keySelector) {
    final seen = <K>{};
    return list.where((element) => seen.add(keySelector(element))).toList();
  }
  
  /// Get distinct elements
  static List<T> distinct<T>(List<T> list) {
    return list.toSet().toList();
  }
  
  /// Get distinct elements preserving order
  static List<T> distinctPreserveOrder<T>(List<T> list) {
    final seen = <T>{};
    return list.where((element) => seen.add(element)).toList();
  }
  
  /// Get distinct elements by key preserving order
  static List<T> distinctByPreserveOrder<T, K>(List<T> list, K Function(T) keySelector) {
    final seen = <K>{};
    return list.where((element) => seen.add(keySelector(element))).toList();
  }
  
  /// Get distinct elements by key with count
  static Map<K, int> distinctByWithCount<T, K>(List<T> list, K Function(T) keySelector) {
    final counts = <K, int>{};
    for (final element in list) {
      final key = keySelector(element);
      counts[key] = (counts[key] ?? 0) + 1;
    }
    return counts;
  }
  
  /// Get distinct elements with count
  static Map<T, int> distinctWithCount<T>(List<T> list) {
    final counts = <T, int>{};
    for (final element in list) {
      counts[element] = (counts[element] ?? 0) + 1;
    }
    return counts;
  }
  
  /// Get distinct elements by key with values
  static Map<K, List<T>> distinctByWithValues<T, K>(List<T> list, K Function(T) keySelector) {
    final groups = <K, List<T>>{};
    for (final element in list) {
      final key = keySelector(element);
      groups.putIfAbsent(key, () => <T>[]).add(element);
    }
    return groups;
  }
  
  /// Get distinct elements with values
  static Map<T, List<T>> distinctWithValues<T>(List<T> list) {
    final groups = <T, List<T>>{};
    for (final element in list) {
      groups.putIfAbsent(element, () => <T>[]).add(element);
    }
    return groups;
  }
  
  /// Get distinct elements by key with first value
  static Map<K, T> distinctByWithFirstValue<T, K>(List<T> list, K Function(T) keySelector) {
    final groups = <K, T>{};
    for (final element in list) {
      final key = keySelector(element);
      if (!groups.containsKey(key)) {
        groups[key] = element;
      }
    }
    return groups;
  }
  
  /// Get distinct elements with first value
  static Map<T, T> distinctWithFirstValue<T>(List<T> list) {
    final groups = <T, T>{};
    for (final element in list) {
      if (!groups.containsKey(element)) {
        groups[element] = element;
      }
    }
    return groups;
  }
  
  /// Get distinct elements by key with last value
  static Map<K, T> distinctByWithLastValue<T, K>(List<T> list, K Function(T) keySelector) {
    final groups = <K, T>{};
    for (final element in list) {
      final key = keySelector(element);
      groups[key] = element;
    }
    return groups;
  }
  
  /// Get distinct elements with last value
  static Map<T, T> distinctWithLastValue<T>(List<T> list) {
    final groups = <T, T>{};
    for (final element in list) {
      groups[element] = element;
    }
    return groups;
  }
  
  /// Get distinct elements by key with count and values
  static Map<K, Map<String, dynamic>> distinctByWithCountAndValues<T, K>(List<T> list, K Function(T) keySelector) {
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
  
  /// Get distinct elements with count and values
  static Map<T, Map<String, dynamic>> distinctWithCountAndValues<T>(List<T> list) {
    final groups = <T, Map<String, dynamic>>{};
    for (final element in list) {
      if (!groups.containsKey(element)) {
        groups[element] = {'count': 0, 'values': <T>[]};
      }
      groups[element]!['count'] = (groups[element]!['count'] as int) + 1;
      (groups[element]!['values'] as List<T>).add(element);
    }
    return groups;
  }
}

