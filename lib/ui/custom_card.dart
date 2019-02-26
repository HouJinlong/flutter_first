import 'package:flutter/material.dart';
import '../config/data.dart';
import 'details/details_page.dart';

final baseTextStyle = const TextStyle(
  fontFamily: 'ZCOOL'
);

final headerTextStyle = baseTextStyle.copyWith(
  color: Colors.white,
  fontSize: 18.0,
  fontWeight: FontWeight.w600
);

final regularTextStyle = baseTextStyle.copyWith(
  color: const Color(0xffb6b2df),
  fontSize:10.0,
  fontWeight: FontWeight.w400
);

final subHeaderTextStyle = regularTextStyle.copyWith(
  fontSize: 14.0
);
final commonTextStyle = baseTextStyle.copyWith(
  color: const Color(0xffb6b2df),
  fontSize: 18.0,
  fontWeight: FontWeight.w400
);
class Separator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.symmetric(vertical: 8.0),
      height: 2.0,
      width: 18.0,
      color: new Color(0xff00c6ff)
    );
  }
}

class CustomCard extends StatelessWidget {
  final Planet planet;
  final bool horizontal;
  CustomCard({Key key, this.planet,this.horizontal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final thumbnail =Container(
      margin: const EdgeInsets.all(16.0),
      alignment: horizontal ? FractionalOffset.centerLeft : FractionalOffset.topCenter,
      child: Hero(
        tag: "planet-hero-${planet.id}",
        child: Image(
          image: AssetImage(planet.image),
          height: 92.0,
          width: 92.0,
        ),
      )
    );
    
    
    Widget _planetValue({String img,String text}){
      return Container(
        child: Row(
          children: <Widget>[
            new Image.asset(img, height: 12.0),
            new Container(width: 8.0),
            new Text(
              text,
              style: regularTextStyle,
            ),
          ],
        ),
      );
    }
    final cardContent =Container(
      margin: EdgeInsets.fromLTRB(horizontal ? 76.0 : 16.0, horizontal ? 16.0 : 42.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: horizontal?CrossAxisAlignment.start:CrossAxisAlignment.center,
        children: <Widget>[
          new Container(height: 4.0),
          Text(
            planet.name,
            style: headerTextStyle,
          ),
          new Container(height: 10.0),
          Text(
            planet.location,
            style: subHeaderTextStyle
          ),
          Separator(),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: horizontal ? 1 : 0,
                child: _planetValue(
                  img:"assets/images/ic_distance.png",
                  text: planet.distance
                )
              ),
              new Container(width: 32.0),
              Expanded(
                flex: horizontal ? 1 : 0,
                child: _planetValue(
                  img: "assets/images/ic_gravity.png",
                  text: planet.gravity
                )
              )
            ],
          ),
        ],
      ),
    );
    
    final card =Container(
      height: horizontal ? 124.0 : 154.0,
      margin: horizontal? new EdgeInsets.only(left: 46.0) : new EdgeInsets.only(top: 72.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Color(0xFF333366),
         borderRadius: BorderRadius.circular(8.0),
         boxShadow: <BoxShadow>[
           BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: new Offset(0.0, 10.0),
           )
         ]
      ),
      child: cardContent,
    );

    

    return GestureDetector(
      onTap: horizontal?(){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return DetailsPage(planet);
        }));
      }:null,
      child: Container(
        margin:const EdgeInsets.symmetric(
          vertical:24.0,
          horizontal:16.0
        ),
        child: Stack(
          children: <Widget>[
            card,
            thumbnail,
          ],
        ),
      ),
    );
  }
}