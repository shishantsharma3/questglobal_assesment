import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:questglobal_assesment/auth.dart';

class HomeFragmentScreen extends StatefulWidget {
  const HomeFragmentScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragmentScreen> {
  TextEditingController mobileController = TextEditingController();

  final User? user = Auth().currentUser;

  Future<void> signout() async {
    await Auth().signout();
  }

  Widget _userUid() {
    return Text(user?.email ?? 'user email',
        style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'Roboto-Medium.ttf',
            fontWeight: FontWeight.normal));
  }

  Widget _signOutButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF00008B),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        ),
        onPressed: signout,
        child: const Text(
          'signout',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
              fontFamily: 'Roboto'),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF4F4F4),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70.0),
            child: AppBar(
                backgroundColor: const Color(0xFF00008B),
                iconTheme: const IconThemeData(color: Colors.white),
                centerTitle: false,
                titleSpacing: 0,
                title: Row(children: [
                  const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("Home Screen",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Roboto-Medium.ttf',
                              fontWeight: FontWeight.w500))),
                  const SizedBox(
                    width: 60,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _signOutButton(),
                      SizedBox(
                          height: 40,
                          child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: _userUid()))
                    ],
                  )
                ]))),
        body: ListView(children: [
          Stack(children: <Widget>[
            Padding(
                padding: const EdgeInsets.fromLTRB(00.0, 0.0, 0.0, 0.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                          height: 50,
                          width: double.infinity,
                          // alignment: Alignment.topCenter,
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
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(10, 12, 0, 0),
                            child: TextField(
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  labelStyle: TextStyle(
                                      color: Color(0xFF646464),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                  hintText: 'Search Product',
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                )),
                          )),
                      Container(
                          height: 350,
                          width: double.infinity,
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(
                              top: 10, left: 10, right: 10, bottom: 10),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              )),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(130, 15, 0, 15),
                                    child: CircleAvatar(
                                        radius: 50,
                                        backgroundColor: Color(0xFFE8E8E8),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.all(10.0),
                                        ))),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              15.0, 20, 0, 0),
                                          child: Text(
                                            "Product Name -",
                                            style: TextStyle(
                                                color: Color(0xFF242632),
                                                fontSize: 13,
                                                fontFamily: 'Roboto-Medium.ttf',
                                                fontWeight: FontWeight.w600),
                                          )),
                                      Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(20, 20, 0, 0),
                                          child: Text(
                                            "Product 1",
                                            style: TextStyle(
                                                color: Color(0xFF242632),
                                                fontSize: 13,
                                                fontFamily:
                                                    'Roboto-Regular.ttf',
                                                fontWeight: FontWeight.normal),
                                          ))
                                    ]),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              15.0, 15, 0, 0),
                                          child: Text(
                                            "Product ID -",
                                            style: TextStyle(
                                                color: Color(0xFF242632),
                                                fontSize: 13,
                                                fontFamily: 'Roboto-Medium.ttf',
                                                fontWeight: FontWeight.w600),
                                          )),
                                      Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(40, 15, 0, 0),
                                          child: Text(
                                            "EB17901000",
                                            style: TextStyle(
                                                color: Color(0xFF242632),
                                                fontSize: 13,
                                                fontFamily:
                                                    'Roboto-Regular.ttf',
                                                fontWeight: FontWeight.normal),
                                          ))
                                    ]),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              15.0, 15, 0, 0),
                                          child: Text(
                                            "Product Details -",
                                            style: TextStyle(
                                                color: Color(0xFF242632),
                                                fontSize: 13,
                                                fontFamily: 'Roboto-Medium.ttf',
                                                fontWeight: FontWeight.w600),
                                          )),
                                    ]),
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                    child: Text(
                                      "All the Details of Products are will be mentioned here",
                                      style: TextStyle(
                                          color: Color(0xFF242632),
                                          fontSize: 13,
                                          fontFamily: 'Roboto-Regular.ttf',
                                          fontWeight: FontWeight.normal),
                                    )),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //       builder: (context) =>
                                          //           const FleetAdditionScreen()),
                                          // );
                                        },
                                        child: const Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                40.0, 40, 0, 0),
                                            child: Text(
                                              "Save",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFFEF4C45),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto-Medium.ttf',
                                              ),
                                            )),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 25, 20, 0),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color(0xFF00008B),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 80,
                                                      vertical: 15),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30))),
                                          child: const Text(
                                            'ADD',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                          onPressed: () {
                                            // Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //       builder: (context) =>
                                            //           const ChangeTLClientRequestScreen()),
                                            // );
                                          },
                                        ),
                                      ),
                                    ])
                              ])),
                      Container(
                          height: 350,
                          width: double.infinity,
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(
                              top: 10, left: 10, right: 10, bottom: 10),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              )),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(130, 15, 0, 15),
                                    child: CircleAvatar(
                                        radius: 50,
                                        backgroundColor: Color(0xFFE8E8E8),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.all(10.0),
                                        ))),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              15.0, 20, 0, 0),
                                          child: Text(
                                            "Product Name -",
                                            style: TextStyle(
                                                color: Color(0xFF242632),
                                                fontSize: 13,
                                                fontFamily: 'Roboto-Medium.ttf',
                                                fontWeight: FontWeight.w600),
                                          )),
                                      Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(20, 20, 0, 0),
                                          child: Text(
                                            "Product 2",
                                            style: TextStyle(
                                                color: Color(0xFF242632),
                                                fontSize: 13,
                                                fontFamily:
                                                    'Roboto-Regular.ttf',
                                                fontWeight: FontWeight.normal),
                                          ))
                                    ]),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              15.0, 15, 0, 0),
                                          child: Text(
                                            "Product ID -",
                                            style: TextStyle(
                                                color: Color(0xFF242632),
                                                fontSize: 13,
                                                fontFamily: 'Roboto-Medium.ttf',
                                                fontWeight: FontWeight.w600),
                                          )),
                                      Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(40, 15, 0, 0),
                                          child: Text(
                                            "EB17901001",
                                            style: TextStyle(
                                                color: Color(0xFF242632),
                                                fontSize: 13,
                                                fontFamily:
                                                    'Roboto-Regular.ttf',
                                                fontWeight: FontWeight.normal),
                                          ))
                                    ]),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              15.0, 15, 0, 0),
                                          child: Text(
                                            "Product Details -",
                                            style: TextStyle(
                                                color: Color(0xFF242632),
                                                fontSize: 13,
                                                fontFamily: 'Roboto-Medium.ttf',
                                                fontWeight: FontWeight.w600),
                                          )),
                                    ]),
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                    child: Text(
                                      "All the Details of Products are will be mentioned here",
                                      style: TextStyle(
                                          color: Color(0xFF242632),
                                          fontSize: 13,
                                          fontFamily: 'Roboto-Regular.ttf',
                                          fontWeight: FontWeight.normal),
                                    )),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //       builder: (context) =>
                                          //           const FleetAdditionScreen()),
                                          // );
                                        },
                                        child: const Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                40.0, 40, 0, 0),
                                            child: Text(
                                              "Save",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFFEF4C45),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto-Medium.ttf',
                                              ),
                                            )),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 25, 20, 0),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color(0xFF00008B),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 80,
                                                      vertical: 15),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30))),
                                          child: const Text(
                                            'ADD',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                          onPressed: () {
                                            // Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //       builder: (context) =>
                                            //           const ChangeTLClientRequestScreen()),
                                            // );
                                          },
                                        ),
                                      ),
                                    ])
                              ])),
                    ]))
          ])
        ]));
  }
}
