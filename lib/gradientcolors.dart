import 'package:flutter/material.dart';
import 'package:learnapp/providers/colorprovider.dart';
import 'package:provider/provider.dart';

class GradientColors extends StatefulWidget {
  const GradientColors({ Key? key }) : super(key: key);

  @override
  State<GradientColors> createState() => _GradientColorsState();
}

class _GradientColorsState extends State<GradientColors> {
  int _count =0;
  @override
  Widget build(BuildContext context) {
    return Consumer<ColorProvider>(builder: (context, colorProvider, _) {
      return GestureDetector(
        child: AnimatedContainer(
          duration: const Duration( milliseconds: 200),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: colorProvider.colorSelected,
              //stops: colorProvider.lsStops,
            )
          ),
        ),
        onTap: () {
          setState(() {
            _count++;
          });
          _count = Provider.of<ColorProvider>(context, listen: false).changeColors(_count);
        }
      );
    });
  }
}
