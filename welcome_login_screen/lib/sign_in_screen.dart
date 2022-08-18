import 'package:flutter/material.dart';
import 'package:welcome_login_screen/constants.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/perosn.jpeg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter
                  )
              ),
            )
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  p1,
                  p2,
                  row3,
                  Spacer(),
                  row4
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

var row1 = Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text("SignIn",
      style: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold
      ),
    ),
    Text("SignUp",
      style: TextStyle(
        fontSize: 24,
        color: Colors.amber
      ),
    ),
  ],
);

var p1 = Padding(
    padding: EdgeInsets.symmetric(vertical: 40),
    child: row1,
);

var row2 = Row(
  children: [
    Padding(
        padding: EdgeInsets.only(right: 16),
        child:     Icon(
          Icons.alternate_email,
          color: kPrimaryColor,
        ),
    ),
    Expanded(
        child: TextField(
          decoration: InputDecoration(
              hintText: "Email address"
          ),
        )
    )
  ],
);

var p2 = Padding(
    padding: EdgeInsets.only(bottom: 40),
    child: row2,
);

var row3 = Row(
  children: [
    Padding(
      padding: EdgeInsets.only(right: 10),
      child:     Icon(
        Icons.alternate_email,
        color: kPrimaryColor,
      ),
    ),
    Expanded(
        child: TextField(
          decoration: InputDecoration(
              hintText: "Password"
          ),
        )
    )

  ],
);

var row4 = Row(
  children: [
    c1,
    c2,
    Spacer(),
    c3
  ],
);

var c1 = Container(
  padding: EdgeInsets.all(16),
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
      color: Colors.white.withOpacity(0.5)
    )
  ),
  child: Icon(
    Icons.android
  ),
);

var c2 = Container(
  padding: EdgeInsets.all(16),
  margin: EdgeInsets.symmetric(horizontal: 20),
  decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
          color: Colors.white.withOpacity(0.5)
      )
  ),
  child: Icon(
      Icons.chat
  ),
);

var c3 = Container(
  padding: EdgeInsets.all(16),
  decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: kPrimaryColor,
      ),
      color: kPrimaryColor
  ),
  child: Icon(
      Icons.arrow_forward
  ),
);
