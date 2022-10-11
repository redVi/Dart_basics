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

  group('ConvertNumber', () {
    test('converts decimal to binary', () {
      final convert = ConvertNumber();
      expect(convert.toBinary(86), 1010110);
      expect(convert.toBinary(112), 1110000);
    });

    test('converts binary to decimal', () {
      final convert = ConvertNumber();
      expect(convert.toDecimal(1010110), 86);
      expect(convert.toDecimal(1110000), 112);
    });
  });

  group('ManipulateCollection', () {
    test('returns collection of numbers from string', () {
      final collection = ManipulateCollections();
      expect(collection.getNumbersFromString('Two 45 numbers 27 33 jack'),
          [45, 27, 33]);
    });

    test('returns Map from array of string', () {
      final collection = ManipulateCollections();
      expect(
          collection.getKeys([
            'world',
            'genesis',
            'generation',
            'genesis',
            'boss',
            'genesis',
            'boss'
          ]),
          {'world': 1, 'genesis': 3, 'generation': 1, 'boss': 2});
    });
  });
}
