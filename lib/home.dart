import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        key: _key,
        drawer: CustomDrawer(
          height: size.height,
          width: size.width,
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leadingWidth: 60,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                _key.currentState!.openDrawer();
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.2),
                  //     spreadRadius: 2,
                  //     blurRadius: 5,
                  //     offset: Offset(0, 3), // changes position of shadow
                  //   ),
                  // ],
                ),
                child: const Icon(
                  Icons.sort,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.black,
                  )),
            )
          ],
        ),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * .04, left: size.width * .07),
              child: Row(
                children: [
                  Text(
                    "Hello Rizki  ",
                    style: TextStyle(color: Color.fromARGB(255, 68, 68, 68)),
                  ),
                  Icon(
                    Icons.waving_hand,
                    size: size.height * .02,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * .08, left: size.width * .07),
              child: Text(
                "Welcome back! ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: size.height * .04,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    right: size.width * .07,
                    top: size.height * .16,
                    left: size.width * .07),
                child: Container(
                  height: size.height * .3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/well.jpg",
                        )),
                    borderRadius: BorderRadius.circular(size.width * .026),
                  ),
                  child: BlurryContainer(
                      height: size.height * .25,
                      width: size.width * .1,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      blur: 1.1,
                      color: Color.fromARGB(9, 158, 158, 158),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: size.height * .12, left: 10),
                            child: Text(
                              "Mulai berolaharaga dan mekari taman bersama",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: size.height * .035),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: size.height * .22, left: 10),
                              child: Container(
                                height: size.height * .05,
                                width: size.width * .3,
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Center(
                                    child: FittedBox(
                                        fit: BoxFit.cover,
                                        child: Text(
                                          "Lehat Sekarang",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500),
                                        )),
                                  ),
                                ),
                              )),
                        ],
                      )),
                )),
            Padding(
              padding: EdgeInsets.only(
                top: size.height * .5,
                left: size.width * .07,
                right: size.width * .07,
              ),
              child: Container(
                height: size.height * .06,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Kategory Olahraga",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.height * .025,
                      ),
                    ),
                    Text(
                      "Lihat semua",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: size.height * .6,
                left: size.width * .07,
                right: size.width * .07,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: size.height * .08,
                        width: size.width * .4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: CircleAvatar(
                                maxRadius: size.height * .023,
                                backgroundColor: Colors.green,
                                child: CircleAvatar(
                                  maxRadius: size.height * .02,
                                  backgroundImage:
                                      AssetImage("assets/swim.png"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Renang")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: size.height * .08,
                        width: size.width * .4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: CircleAvatar(
                                maxRadius: size.height * .023,
                                backgroundColor: Colors.redAccent,
                                child: CircleAvatar(
                                  maxRadius: size.height * .02,
                                  backgroundImage:
                                      AssetImage("assets/snow.png"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Bola kaki")
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: size.height * .08,
                        width: size.width * .4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 5.0),
                              child: CircleAvatar(
                                maxRadius: size.height * .023,
                                backgroundColor: Colors.purple,
                                child: CircleAvatar(
                                  maxRadius: size.height * .02,
                                  backgroundImage:
                                      AssetImage("assets/basket.png"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Bola Basket")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: size.height * .08,
                        width: size.width * .4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 20.0),
                              child: CircleAvatar(
                                maxRadius: size.height * .023,
                                backgroundColor: Colors.redAccent,
                                child: CircleAvatar(
                                  maxRadius: size.height * .02,
                                  backgroundImage:
                                      AssetImage("assets/snow.png"),
                                ),
                              ),
                            ),
                            Text("Futsal")
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
