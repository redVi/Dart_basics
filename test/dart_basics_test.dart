import 'package:flutter_test/flutter_test.dart';
import 'package:dart_basics/dart_basics.dart';

void main() {
  group('DelimetersCalculator', () {
    test('returns greatest common divisor correctly', () {
      final delimetersCalculator = DelimetersCalculator();
      expect(delimetersCalculator.gcd(15, 5), 5);
      expect(delimetersCalculator.gcd(30, 15), 15);
      expect(delimetersCalculator.gcd(32, 6), 2);
      expect(delimetersCalculator.gcd(12, 6), isNot(5));
    });

    test('returns least common multiple correctly', () {
      final delimetersCalculator = DelimetersCalculator();
      expect(delimetersCalculator.lcm(15, 5), 15);
      expect(delimetersCalculator.lcm(30, 15), 30);
      expect(delimetersCalculator.lcm(32, 6), 96);
      expect(delimetersCalculator.lcm(12, 6), isNot(11));
    });
  });
}
