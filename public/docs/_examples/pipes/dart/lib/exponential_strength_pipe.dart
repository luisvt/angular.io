// #docregion

import 'dart:math';

import 'package:angular2/angular2.dart';

/*
 * Raise the value exponentially
 * Takes an exponent argument that defaults to 1.
 * Usage:
 *   value | exponentialStrength:exponent
 * Example:
 *   {{ 2 |  exponentialStrength:10}}
 *   formats to: 1024
 */
@Pipe(name: 'exponentialStrength')
class ExponentialStrengthPipe extends PipeTransform {
  transform(/*String | num*/value, [/*String | num*/power]) {
    if (value is String) value = num.parse(value, (_) => 0);
    if (power is String) power = num.parse(power, (_) => 0);
    return pow(value, power);
  }
}
