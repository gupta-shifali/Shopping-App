import 'package:flutter/material.dart';

class CircleIndicator extends Decoration {
  final BoxPainter _painter;

  CircleIndicator({@required Color color, @required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius) : _paint = Paint()
    ..color = color
    ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    final Offset circleOffset = offset + Offset(configuration.size.width /2, configuration.size.height - 3* radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}

