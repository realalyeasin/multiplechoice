import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class upComing extends StatefulWidget {
  const upComing({Key? key}) : super(key: key);

  @override
  State<upComing> createState() => _upComingState();
}

class _upComingState extends State<upComing> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3200));
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(2, 26, 72, 1),
        body: Stack(
          overflow: Overflow.visible,
          children: [
            Positioned(
              top: 50,
              left: 330,
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(width: 4, color: Colors.white)),
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: RotationTransition(
                          turns: _controller,
                          child: const Icon(
                            FontAwesomeIcons.hammer,
                            color: Color.fromRGBO(251, 199, 158, 1)
                          )))),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Reading Materials', style: TextStyle(color: Colors.white, letterSpacing: 2, fontWeight: FontWeight.w600, fontSize: 16),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('UI', style: TextStyle(color: Colors.white, letterSpacing: 2, fontWeight: FontWeight.w600, fontSize: 16),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('More Important Quizzes', style: TextStyle(color: Colors.white, letterSpacing: 2, fontWeight: FontWeight.w600, fontSize: 16),),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
