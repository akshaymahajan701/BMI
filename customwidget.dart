import 'package:BMI/final.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final Color inactivecolor = Color(0xFF000000);
final Color activecolor = Color(0x40000000);

enum gender {
  male,
  female,
}

Widget customAppBar() {
  return AppBar(
    title: Text(
      "BMI CALCULATOR",
      style: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 15.0,
        letterSpacing: 1.2,
      ),
    ),
  );
}

class BackCard extends StatefulWidget {
  @override
  _BackCardState createState() => _BackCardState();
}

class _BackCardState extends State<BackCard> {
  gender selectedGender; //object of enum
  int height = 180;
  int age = 21;
  int weight = 60;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = gender.male;
                    });
                  },
                  child: BackContainer(
                    //Back container of MALE
                    colour: selectedGender == gender.male
                        ? activecolor
                        : inactivecolor,
                    cardChild: Column(
                      //CardChild is custom widget upper one of back container
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.male,
                          size: 80.0,
                        ),
                        SizedBox(height: 25.0),
                        Text(
                          "MALE",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = gender.female;
                    });
                  },
                  child: BackContainer(
                    //Back container of Female
                    colour: selectedGender == gender.female
                        ? activecolor
                        : inactivecolor,
                    cardChild: Column(
                      //cardChild of female
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.female,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Text(
                          "FEMALE",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {},
            child: BackContainer(
              colour: inactivecolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: TextStyle(
                          fontSize: 50.0,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "cm",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    onChanged: (double newvalue) {
                      setState(() {
                        height = newvalue.round();
                      });
                    },
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFFFFFFF),
                    inactiveColor: Color(0xFF000000),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: BackContainer(
                //weight
                colour: inactivecolor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "WEIGHT",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      weight.toString(),
                      style: TextStyle(
                        fontSize: 50.0,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              weight = weight - 1;
                            });
                          },
                          backgroundColor: Color(0x95FFFFFF),
                          child: Icon(
                            FontAwesomeIcons.minus,
                            color: Color(0xFF000000),
                          ),
                          mini: true,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              weight = weight + 1;
                            });
                          },
                          backgroundColor: Color(0x95FFFFFF),
                          child: Icon(
                            FontAwesomeIcons.plus,
                            color: Color(0xFF000000),
                          ),
                          mini: true,
                        ),
                      ],
                    ),
                  ],
                ),
              )),
              Expanded(
                child: BackContainer(
                  //AGE
                  colour: inactivecolor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "AGE",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        age.toString(),
                        style: TextStyle(
                          fontSize: 50.0,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                age = age - 1;
                              });
                            },
                            backgroundColor: Color(0x95FFFFFF),
                            child: Icon(
                              FontAwesomeIcons.minus,
                              color: Color(0xFF000000),
                            ),
                            mini: true,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                age = age + 1;
                              });
                            },
                            backgroundColor: Color(0x95FFFFFF),
                            child: Icon(
                              FontAwesomeIcons.plus,
                              color: Color(0xFF000000),
                            ),
                            mini: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(),
              ),
            );
          },
          child: Container(
            color: Color(0xFF000000),
            width: double.infinity,
            height: 55.0,
            child: Center(
              child: Text(
                "CALCULATE",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BackContainer extends StatelessWidget {
  @override
  BackContainer({@required this.colour, this.cardChild});
  final Widget cardChild;
  final Color colour;
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: colour,
      ),
    );
  }
}
