
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:day_33_morning_challenge_curve/main.dart';


void main() {
  Curve myCurve = MyCurve();
  print(myCurve.transform(0.5));
  test("Testing curve value", (){
    expect(myCurve.transformInternal(0.2), 0.0);
    expect(myCurve.transformInternal(0.2), 0.0);
    expect(myCurve.transformInternal(0.21), Curves.ease.transformInternal(0.01));});

});
    
}
