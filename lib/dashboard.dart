import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: Icon(Icons.menu),
            title: Text("Global Neuro Care"),
          ),
          body: Stack(
            children: [
              Positioned(
                top: -100,
                left: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/semirounded.jpg",
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                // color: Colors.red,
                // width: MediaQuery.of(context).size.width / 1.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("EMERGENCY CALL"),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OptionWidget(),
                        OptionWidget(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OptionWidget(),
                        OptionWidget(),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      color: Colors.amber,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      width: 50,
                                      height: 50,
                                      child: Image.asset(
                                        "assets/images/placeholder.png",
                                      )),
                                  Text("Know About Us")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class OptionWidget extends StatelessWidget {
  String text = "hello";

  OptionWidget();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          print("gghhg");
        },
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Material(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            elevation: 20,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 8),
                child: Column(
                  children: [
                    Icon(Icons.access_alarm),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Request a Call"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
