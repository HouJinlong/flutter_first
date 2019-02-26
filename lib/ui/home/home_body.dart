import 'package:flutter/material.dart';
import '../custom_card.dart';
import '../../config/data.dart';

class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color:Color(0xFF736AB7),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: false,
          slivers: <Widget>[
              SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              sliver:SliverList(
                delegate:  SliverChildBuilderDelegate(
                  (context, index) => CustomCard(
                    planet: planets[index],
                    horizontal: true,
                  ),
                  childCount: planets.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}