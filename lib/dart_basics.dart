library dart_basics;

/// A delimeters calculator.
class DelimetersCalculator {
  /// Returns greatest common divisor
  int gcd(int a, int b) {
    return b > 0 ? gcd(b, a % b) : a;
  }

  /// Returns least common multiple
  int lcm(int a, int b) {
    return (a / gcd(a, b) * b).toInt();
  }
}
