import 'package:flutter/material.dart';
import 'package:learnapp/gradientcolors.dart';
import 'package:learnapp/providers/colorprovider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const HomePage());

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ColorProvider(),
      child: const GradientColors(),
    );
  }
}