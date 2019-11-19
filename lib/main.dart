import 'package:flutter/material.dart';

void main() => runApp(AnimatedDots());

class AnimatedDots extends StatefulWidget {
  @override
  _AnimatedDotsState createState() => _AnimatedDotsState();
}

class _AnimatedDotsState extends State<AnimatedDots> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyCurve extends Curve {
  @override
  double transformInternal(double t) {
    double half = 0.4;

    if(t > 0.2 && t <= half){
      return Curves.ease.transform((5*t)-1.0);

    }
    else if(t > half && t < 0.6){
      return Curves.decelerate.transform(3-(5*t));
    }

    else{
      return 0.0;
    }
  }
}
