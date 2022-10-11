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
