import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  TextEditingController mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF4F4F4),
        appBar: AppBar(
            backgroundColor: const Color(0xFF00008B),
            iconTheme: const IconThemeData(color: Colors.white),
            centerTitle: false,
            titleSpacing: 0,
            title: const Padding(
              padding: EdgeInsets.all(10),
              child: Text("User Profile",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Roboto-Medium.ttf',
                      fontWeight: FontWeight.w500)),
            )),
        body: Stack(children: <Widget>[
          Padding(
              padding: const EdgeInsets.fromLTRB(00.0, 20.0, 0.0, 0.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      height: 250,
                      width: double.infinity,
                      alignment: Alignment.topCenter,
                      margin: const EdgeInsets.only(
                          top: 15, left: 15, right: 15, bottom: 0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: const Color(0xFFE8E8E8), width: 1),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(6.0),
                            bottomRight: Radius.circular(6.0),
                            topLeft: Radius.circular(6.0),
                            bottomLeft: Radius.circular(6.0),
                          )),
                      child: Column(children: [
                        Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                    radius: 50,
                                    backgroundColor: Color(0xFFE8E8E8),
                                    child: Padding(
                                      padding:
                                          EdgeInsetsDirectional.only(end: 8.0),
                                    )),
                                const SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "John Doe",
                                      style: TextStyle(
                                        color: Color(0xFF242632),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto-Medium.ttf',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "9876543210",
                                      style: TextStyle(
                                        color: Color(0xFF646464),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto-Medium.ttf',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Johndoe@gmail.com",
                                      style: TextStyle(
                                        color: Color(0xFF646464),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto-Medium.ttf',
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF00008B),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 80, vertical: 15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            child: const Text(
                              'EDIT',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Roboto-Medium.ttf',
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ]),
                    ),
                  ]))
        ]));
  }
}
