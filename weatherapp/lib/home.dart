import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/consts/colors.dart';
import 'package:weatherapp/consts/images.dart';
import 'package:weatherapp/consts/strings.dart';

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
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.light_mode,
                color: Vx.gray600,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Vx.gray400,
              ))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "DHAKA",
                style: GoogleFonts.poppins(
                    fontSize: 32, letterSpacing: 3, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/weather/01d.png",
                    height: 80,
                    width: 80,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "22$degree",
                        style: TextStyle(
                          color: Vx.gray900,
                          fontSize: 64,
                        )),
                    TextSpan(
                        text: "Haze",
                        style: TextStyle(
                          color: Vx.gray700,
                          fontSize: 14,
                          letterSpacing: 3,
                        )),
                  ]))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.expand_less,
                        color: Vx.gray400,
                      ),
                      label: "18$degree".text.make()),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.expand_more,
                        color: Vx.gray400,
                      ),
                      label: "27$degree".text.make()),
                ],
              ),
              20.heightBox,
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(3, (index) {
                    var iconsList = [clouds, humidity, windspeed];
                    var values = ["7%", "70%", "0.0 Km/h"];
                    return Column(
                      children: [
                        Image.asset(
                          iconsList[index],
                          width: 60,
                          height: 60,
                        ).box.padding(EdgeInsets.all(8)).gray200.roundedSM.make(),
                        10.heightBox,
                        "${values[index]}".text.gray400.make(),
                      ],
                    );
                  })),
              10.heightBox,
              Divider(),
              10.heightBox,
              SizedBox(
                height: 150,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          "${index + 1} AM".text.gray200.make(),
                          Image.asset(
                            "assets/weather/09n.png",
                            width: 80,
                          ),
                          "23$degree".text.white.make(),
                        ],
                      ),
                    );
                  },
                ),
              ),
              10.heightBox,
              Divider(),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Next 7 Days".text.semiBold.size(16).make(),
                  TextButton(onPressed: (){}, child: "View All".text.make())
                ],
              ),

              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index){
                    var day = DateFormat("EEEE").format(DateTime.now().add(Duration(days: index + 1)));
                    return Card(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: day.text.semiBold.make()),
                            Expanded(
                              child: TextButton.icon(
                                  onPressed: () {},
                                  icon: Image.asset("assets/weather/50n.png", width: 40,
                                  ),
                                  label: "27$degree".text.black.make()),
                            ),
                            RichText(text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "28$degree /",
                                  style: TextStyle(
                                    color: Vx.gray800,
                                    fontSize: 16,
                                  )
                                ),

                                TextSpan(
                                    text: " 18$degree",
                                    style: TextStyle(
                                      color: Vx.gray600,
                                      fontSize: 16,
                                    )
                                )
                              ]
                            ))
                          ],
                        ),
                      ),
                    );
                  }

              )],
          ),
        ),
      ),
    );
  }
}
