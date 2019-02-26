import 'package:flutter/material.dart';
import '../../config/data.dart';
import '../custom_card.dart';

class DetailsPage extends StatelessWidget {
  final Planet planet;

  DetailsPage(this.planet);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:Container(
        constraints: BoxConstraints.expand(),
        color: Color(0xFF736AB7),
        child: Stack(
          children: <Widget>[
            _getBackground(),
            _getGradient(),
            _getContent(),
            _getBackBtn(context),
          ],
        )
      ),
    );
  }
  Container _getBackBtn( BuildContext context){
     final double statusBarHeight = MediaQuery
      .of(context)
      .padding
      .top;
    return Container(
        padding:EdgeInsets.only(
          top: statusBarHeight,
        ),
        child: BackButton(
          color: Colors.white
        ),
      );
  }
  Widget _getContent() {
    final _overviewTitle = "Overview".toUpperCase();
    return ListView(
      padding: EdgeInsets.only(top: 80.0),
      children: <Widget>[
        CustomCard(planet: planet,horizontal: false,),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_overviewTitle,style: headerTextStyle,),
              Separator(),
              Text(planet.description,style: commonTextStyle,)
            ],
          ),
        )
      ],
    );
  }

  Container _getBackground(){
    return Container(
        child: new Image.network(
          planet.picture,
          fit: BoxFit.cover,
          height: 300.0,
        ),
        constraints: new BoxConstraints.expand(height: 300.0),
    );
  }

  Container _getGradient(){
    return Container(
      height: 110.0,
      margin: const EdgeInsets.only(top: 190),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0x00736AB7),
            Color(0xFF736AB7)
          ],
          stops: [0.0,0.9],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 1.0),
        )
      )
    );
  }
}