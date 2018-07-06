import 'unit.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

// Converter screen where users can input amounts to convert.
//
// Currently, it just displays a list of mock units.
//
// While it is named ConverterRoute, a more apt name would be ConverterScreen,
// because it is responsible for the UI at the route's destination.
class ConverterRoute extends StatelessWidget{
  final String name;
  final Color color;
  final List<Unit> units;

  // This [ConverterRoute] requires the name, color, and units to not be null.
  const ConverterRoute({
    @required this.name,
    @required this.units,
    @required this.color,
  }) : assert(name != null),
       assert(color != null),
       assert(units != null);

  @override
  Widget build(BuildContext context){
    // Here is just a placeholder for a list of mock units
    final unitWidgets = units.map((Unit unit){
      return Container(
        color: this.color,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}