import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  final double barHeight =50.0;
  
  CustomAppbar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final double statusBarHeight = MediaQuery
      .of(context)
      .padding
      .top;

    return Container(
      padding:EdgeInsets.only(
        top:statusBarHeight,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF3366FF),
            const Color(0xFF00CCFF),
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops:  [0.0, 1.0],
          tileMode: TileMode.clamp
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: new Offset(0.0, 10.0),
          )
        ]
      ),
      height: statusBarHeight+barHeight,
      child: Center(
        child: Text('$title',style: TextStyle(
              color: Colors.white,
              fontFamily: 'ZCOOL',
              fontWeight: FontWeight.w600,
              fontSize: 26.0
            ),)
      ),
    );
  }
}