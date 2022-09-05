import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: TextTheme(
          headline5: TextStyle(
            fontWeight: FontWeight.bold
          ),
          button: TextStyle(
            fontWeight: FontWeight.bold
          )
        )
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 50),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "assets/icons/menu.svg",
                height: 11,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                  "Simple way to find \nTasy food",
                  style: Theme.of(context).textTheme.headline5
              )
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:           Row(
              children: [
                CategoryTitle(title: "All", active: true),
                CategoryTitle(title: "Italian"),
                CategoryTitle(title: "Asian"),
                CategoryTitle(title: "Indo"),
                CategoryTitle(title: "Chineses"),
                CategoryTitle(title: "Brugers"),
                CategoryTitle(title: "Vietnam"),
                CategoryTitle(title: "Lao"),
                CategoryTitle(title: "Frances"),
              ],
            )
          ),

        ],
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  final String? title;
  final bool active;
  const CategoryTitle({
    Key? key,
    this.title,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(
          title!,
          style: Theme.of(context).textTheme.button?.copyWith(
            color: active ? kPrimaryColor : kTextColor.withOpacity(0.4)
          ),
        ),
    );
  }
}


