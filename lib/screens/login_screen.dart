import 'package:blog_club/constants/constants.dart';
import 'package:blog_club/screens/home_page_screen.dart';
import 'package:blog_club/screens/main_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode negahban1 = FocusNode();
  FocusNode negahban2 = FocusNode();
  bool obscureText = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    negahban1.addListener(() {
      setState(() {});
    });
    super.initState();
    negahban2.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            Positioned(
              left: 50,
              right: 50,
              child: Image.asset('assets/images/posts/small/LOGO_SMALL.jpg'),
            ),
            SizedBox(
              height: 40,
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 100,
                          right: 100,
                          top: 28,
                          bottom: 18,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'LOGIN',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'AR',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              'SING UP',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'AR',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0x40FFFFFF)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  width: double.infinity,
                  height: 676,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome back',
                          style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'AR',
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Sign in with your account',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        SizedBox(
                          height: 37,
                        ),
                        _getTextField('Username', null, negahban1),
                        SizedBox(
                          height: 32,
                        ),
                        _getTextField(
                            'Password', Icon(Icons.visibility), negahban2),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  width: double.infinity,
                  height: 600,
                ),
                _getElevatedButton(),
                Positioned(
                  top: 498,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Forgot your password?',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Reset here',
                        style: Theme.of(context).textTheme.headline6,
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 550,
                  child: Text('OR  SING  IN  WITH',
                      style: Theme.of(context).textTheme.headline5),
                ),
                Positioned(
                    top: 590,
                    child: SizedBox(
                        height: 36,
                        width: 172,
                        child: Image.asset('assets/images/stories/11.jpg')))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _getElevatedButton() {
    return Positioned(
      top: 400,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size(340, 68),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: blue),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return MainScreen();
            },
          ));
        },
        child: Center(
          child: Text(
            'LOGIN',
            style: TextStyle(
                fontSize: 17,
                fontFamily: 'AR',
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _getTextField(String label, [Icon? suffixIcon, FocusNode? focusNode]) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 40),
          child: TextField(
            obscureText: obscureText,
            focusNode: focusNode,
            decoration: InputDecoration(
              suffixIcon: suffixIcon == null
                  ? null
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      child: Icon(obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
              suffixStyle: TextStyle(color: blue),
              labelText: label,
              labelStyle: TextStyle(
                color:
                    focusNode?.hasFocus ?? false ? Colors.black : Colors.grey,
                fontSize: focusNode?.hasFocus ?? false ? 20 : 16,
              ),
            ),
          ),
        )
      ],
    );
  }
}
 
  //               suffixStyle: TextStyle(color: blue),
  //               labelText: lable,
  //               labelStyle: TextStyle(
  //                   color: FocusNode.hasFocus ? Colors.black : Colors.grey,
  //                   fontSize: FocusNode.hasFocus ? 20 : 16)),
  //         ),
  //       )
  //     ],
  //   );
  // }

