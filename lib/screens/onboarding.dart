import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  OnBoarding({Key key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<String> images = [
    'assets/images/bg2.jpg',
    'assets/images/bg3.jpg',
    'assets/images/bg4.jpg',
    'assets/images/bg5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: ExactAssetImage(
                        images[index],
                      ),
                      fit: BoxFit.cover,
                    )),
                  )
                ],
              );
            },
            itemCount: images.length,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4),
                ),
                SizedBox(
                  height: 28,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 30, left: 78.0, right: 18),
                  child: Text(
                    "This project is a starting point for a Flutter application.",
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 28.0, left: 16, right: 16),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.redAccent,
                    child: Text(
                      'GET STARTED',
                      style: TextStyle(
                          color: Colors.white, fontSize: 18, letterSpacing: 2),
                    ),
                    onPressed: () {},
                  ),
                )),
          )
        ],
      ),
    );
  }
}
