import 'package:flutter/material.dart';

main() {
  runApp(OnBoarding());
}

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
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
                            image: ExactAssetImage('assets/images/bg.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Transform.translate(
                        child: Icon(
                          Icons.new_releases,
                          size: 100,
                          color: Colors.white,
                        ),
                        offset: Offset(0, -50),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 48.0),
                        child: Text(
                          "Welcome",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 28.0, left: 48.0, right: 48.0),
                        child: Text(
                          "This project is a starting point for a Flutter application.",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )
                ],
              );
            },
            itemCount: 4,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: RaisedButton(
                color: Colors.red.shade800,
                child: Text(
                  'GET STARTED',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
