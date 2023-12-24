import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    var date = DateFormat("yMMMMd").format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        title: "$date".text.gray700.make(),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.light_mode, color: Vx.gray600,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: Vx.gray400,))
        ],
      ),
      body: Column(),
    );


  }
}
