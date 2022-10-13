library dart_basics;

import 'dart:math' as math;

const _englishNumbers = {
  'zero': 0,
  'one': 1,
  'two': 2,
  'three': 3,
  'four': 4,
  'five': 5,
  'six': 6,
  'seven': 7,
  'eight': 8,
  'nine': 9
};

/// A delimeters calculator.
class DelimetersCalculator {
  /// Returns greatest common divisor
  int gcd(int a, int b) {
    return b.gcd(a);
  }

  /// Returns least common multiple
  int lcm(int a, int b) {
    return (a / gcd(a, b) * b).toInt();
  }
}

/// Binary and decimal converter
class ConvertNumber {
  int toBinary(int num) {
    return int.parse(num.toRadixString(2));
  }

  int toDecimal(int num) {
    var result = 0;
    final digits = num.toString().split('');

    for (var digit in digits) {
      result <<= 1;
      result |= int.parse(digit);
    }

    return result;
  }
}

class ManipulateCollections {
  // Search numbers in the string and returns them
  List<int> getNumbersFromString(String words) {
    var result = <int>[];

    for (var word in words.split(' ')) {
      if (int.tryParse(word) != null) {
        result = [...result, int.parse(word)];
      }
    }

    return result;
  }

  Map<String, int> getKeys(List<String> words) {
    var result = <String, int>{};

    for (var word in words) {
      if (result.containsKey(word)) {
        result[word] = result[word]! + 1;
      } else {
        result[word] = 1;
      }
    }

    return result;
  }

  List<int> getUniqueNumbers(String words) {
    var collection = <int>{};

    for (var word in words.split(',')) {
      final trimmedWord = word.trim();

      if (_englishNumbers.containsKey(trimmedWord)) {
        final w = _englishNumbers[trimmedWord];
        if (w != null) {
          collection.add(w);
        }
      }
    }

    return collection.toList(growable: false);
  }
}

class Point {
  final double x;
  final double y;

  Point(this.x, this.y);

  factory Point.zero() => Point(0, 0);

  factory Point.unitVector() => Point(1, 1);

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return math.sqrt(dx * dx + dy * dy);
  }
}

// TODO: not working correctly without math.pow
extension RootMath on num {
  pow(num exponent) {
    /**
    num self = abs();

    if (exponent == 1) {
      return self;
    } else {
      return self * pow(exponent - 1);
    }
   */

    return math.pow(this, exponent);
  }

  root(num n) {
    return pow(1 / n);
  }
}
