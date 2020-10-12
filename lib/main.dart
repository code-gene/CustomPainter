import 'package:flutter/material.dart';

Color mainBGColor = Color(0xFF652A78);
Color redColor = Color(0xFFDE3C10);
Color purpleColor = Color(0xFF8132AD);
Color cyan = Color(0xFF99D5E5);
Color orange = Color(0xFFE97A4D);

void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomDemo(),
    )
  );
}


class CustomDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomPaint(
          painter: MyCustomPainter(),
          child: Container(
          ),
        ),
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    
    Path mainBGPath = Path();
    mainBGPath.addRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height));
    mainBGPath.close();
    paint.color = mainBGColor;
    canvas.drawPath(mainBGPath, paint);

    Path purplePath = Path();
    purplePath.lineTo(size.width * 0.2, 0);
    purplePath.lineTo(0, size.height * 0.2);

    purplePath.moveTo(0, size.height * 0.4);
    purplePath.lineTo(size.width * 0.4, 0);
    purplePath.lineTo(size.width * 0.6, 0);
    purplePath.lineTo(0, size.height * 0.6);
    purplePath.close();

    purplePath.moveTo(0, size.height * 0.8);
    purplePath.lineTo(size.width * 0.8, 0);
    purplePath.lineTo(size.width, 0);
    purplePath.lineTo(0, size.height);

    purplePath.moveTo(0.2 * size.width, size.height);
    purplePath.lineTo(size.width, size.height * 0.2);
    purplePath.lineTo(size.width, size.height * 0.4);
    purplePath.lineTo(size.width * 0.4, size.height);

    purplePath.moveTo(0.6 * size.width, size.height);
    purplePath.lineTo(size.width, size.height * 0.6);
    purplePath.lineTo(size.width, size.height * 0.8);
    purplePath.lineTo(size.width*0.8, size.height);

    purplePath.close();

    paint.color = purpleColor;
    canvas.drawPath(purplePath, paint);

    // Path purplePath = Path();
    // purplePath.lineTo(size.width * 0.45, 0);
    // purplePath.quadraticBezierTo(size.width * 0.25, size.height * 0.3, 0, size.height * 0.55);
    // purplePath.close();
    // paint.color = purpleColor;
    // canvas.drawPath(purplePath, paint);


  //   Path redPath = Path();
  //   redPath.moveTo(size.width - (size.width * 0.1) , 0.0);
  //   redPath.quadraticBezierTo(size.width * 0.5, size.height * 0.1, 0, size.height - (size.height* 0.2));
  //   redPath.lineTo(0, size.height);
  //   redPath.lineTo(size.width * 0.25, size.height);
  //   redPath.quadraticBezierTo(size.width * 0.5, size.height * 0.7, size.width, size.height * 0.6);
  //   redPath.lineTo(size.width, 0);
  //   redPath.close();
  //   paint.color = redColor;
  //   canvas.drawPath(redPath, paint);
  //
  //   Path orangePath = Path();
  //   orangePath.moveTo(0, size.height * 0.75);
  //   orangePath.quadraticBezierTo(size.width * 0.25, size.height * 0.85, size.width * 0.4, size.height);
  //   orangePath.lineTo(0, size.height);
  //   orangePath.close();
  //   paint.color = orange;
  //   canvas.drawPath(orangePath, paint);
  //
  //   Path trianglePath = Path();
  //   trianglePath.lineTo(size.width * 0.25, 0);
  //   trianglePath.lineTo(0, size.height * 0.25);
  //   trianglePath.close();
  //   paint.color = cyan;
  //   canvas.drawPath(trianglePath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }}
