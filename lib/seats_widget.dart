import 'package:cinema_tickets/seats_page.dart';
import 'package:flutter/material.dart';



List <int> totalSeats = [];

class SeatsWidget extends StatefulWidget {
  Color color = Colors.white;
  final int seatNumber;
  SeatsWidget({Key? key,
     required this.color,
    required this.seatNumber,
    }) : super(key: key);

  @override
  State<SeatsWidget> createState() => SeatsWidgetState();
}

class SeatsWidgetState extends State<SeatsWidget> {

  final SeatsPageState _seatsPageState = SeatsPageState();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (widget.color == Colors.white) {
            widget.color = const Color(0xfff2c94c);
            totalSeats.add(widget.seatNumber);
          }else if(widget.color == Colors.grey) {
            widget.color = Colors.grey;
          }else if (widget.color == const Color(0xfff2c94c)){
            widget.color = Colors.white;
            totalSeats.remove(widget.seatNumber);

          }

        });
        print(SeatsPageState.ticketCounter);
        print(totalSeats);
      },
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        width: 70,
        height: 35,
        color: Colors.transparent,
        child: CustomPaint(
          painter: Seat(customColor: widget.color, seatN: widget.seatNumber),
        ),
      ),
    );
  }
}


class Seat extends CustomPainter {
  final Color customColor;
  final int seatN;

  Seat({required this.seatN, required this.customColor});

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    var pathS = Path();
    var paint = Paint();
    var paintS = Paint();

    paint.color = customColor;
    paint.style = PaintingStyle.stroke;
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = 4;

    paintS.color = customColor;
    paintS.style = PaintingStyle.fill;

    path.moveTo(size.width - 2, 5);
    path.lineTo(size.width - 2, size.height - 5);
    path.arcToPoint(Offset(size.width - 10, size.height - 2), radius: const Radius.circular(-10));
    path.lineTo(7, size.height - 2);
    path.arcToPoint(Offset(2, size.height - 5), radius: const Radius.circular(-10));
    path.lineTo(2, 5);

    pathS.moveTo(size.width - 8, 5);
    pathS.lineTo(size.width - 8, size.height - 10);
    pathS.arcToPoint(Offset(size.width - 12, size.height - 8), radius: const Radius.circular(-5));
    pathS.lineTo(size.width / 2 + 4, size.height - 8);
    pathS.arcToPoint(Offset(size.width / 2 + 2, size.height - 12), radius: const Radius.circular(-5));
    pathS.lineTo(size.width / 2 + 2, 5);
    pathS.arcToPoint(Offset(size.width / 2 + 12, 0), radius: const Radius.circular(-10));
    pathS.lineTo(size.width - 16, 0);
    pathS.arcToPoint(Offset(size.width - 8, 5), radius: const Radius.circular(-10));
    pathS.lineTo(size.width - 8, 5);

    pathS.moveTo(size.width - 38, 5);
    pathS.lineTo(size.width - 38, size.height - 10);
    pathS.arcToPoint(Offset(size.width - 42, size.height - 8), radius: const Radius.circular(-5));
    pathS.lineTo(10, size.height - 8);
    pathS.arcToPoint(Offset(8, size.height - 10), radius: const Radius.circular(-5));
    pathS.lineTo(8, 6);
    pathS.arcToPoint(Offset(16, 0), radius: const Radius.circular(-10));
    pathS.lineTo(size.width / 2 - 10, 0);
    pathS.arcToPoint(Offset(size.width / 2 - 4, 5), radius: const Radius.circular(-10));
    pathS.lineTo(size.width - 38, 5);

    canvas.drawPath(path, paint);
    canvas.drawPath(pathS, paintS);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 35,
      color: Colors.transparent,
      child: CustomPaint(
        painter: Screen(),
      ),
    );
  }
}

class Screen extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    var paint = Paint();

    paint.color = Colors.white;
    paint.style = PaintingStyle.stroke;
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = 8;

    path.moveTo(4, size.height - 4);
    path.arcToPoint(Offset(size.width - 4, size.height - 4), radius: const Radius.circular(700));

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
