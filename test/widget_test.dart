import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:day_33_morning_challenge_curve/main.dart';

void main() {
  Curve myCurve = MyCurve();
  print(myCurve.transform(0.5));
  test("Testing curve value", () {
    expect(myCurve.transform(0.2), 0.0);
    expect(myCurve.transform(0.2), 0.0);
    expect(myCurve.transform(0.3), Curves.ease.transform(0.5));
    expect(myCurve.transform(0.35), Curves.ease.transform(0.75));
    expect(myCurve.transform(0.25), Curves.ease.transform(0.25));
    expect(myCurve.transform(0.4), Curves.ease.transform(1));
    expect(myCurve.transform(0.4), Curves.ease.transform(1));
    expect(myCurve.transform(0.21), Curves.ease.transform(0.01));
    expect(myCurve.transform(0.21), Curves.ease.transform(0.01));
  });
}
