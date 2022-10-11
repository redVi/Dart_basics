library dart_basics;

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
}
