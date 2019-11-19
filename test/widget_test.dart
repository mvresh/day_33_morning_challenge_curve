import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:day_33_morning_challenge_curve/main.dart';

void main() {
  Curve myCurve = MyCurve();
  print(myCurve.transform(0.5));
  test("Testing curve value", () {
    expect(myCurve.transform(0.101), 0.0);
    expect(myCurve.transform(0.2), 0.0);
    expect(myCurve.transform(0.3), Curves.ease.transform(0.5));
    expect(myCurve.transform(0.35), Curves.ease.transform(0.75));
    expect(myCurve.transform(0.25), Curves.ease.transform(0.25));
    expect(myCurve.transform(0.4), Curves.ease.transform(1));
    expect(myCurve.transform(0.199), Curves.ease.transform(0));
    expect(myCurve.transform(0.45), Curves.decelerate.transform(0.75));
    expect(myCurve.transform(0.5), Curves.decelerate.transform(0.5));
    expect(myCurve.transform(0.55), Curves.decelerate.transform(0.25));
    expect(myCurve.transform(.6), Curves.decelerate.transform(0));
    expect(myCurve.transform(.7), 0.0);
    expect(myCurve.transform(.8), 0.0);
    expect(myCurve.transform(1.0), 0.0);
  },);
}
