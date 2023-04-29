// import 'package:app/widgets/utils.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  // const Dashboard(User? user, {super.key});

  @override
  State<Dashboard> createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      'assets/images/picture.png',
                      height: 40,
                      width: 40,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(
                      0, 8, 0, 0), //apply padding to all four sides
                  child: Text(
                    "Good Afternoon, James",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(
                      0, 10, 0, 10), //apply padding to all four sides
                  child: Text("How are you feeling ?"),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            color: Colors.teal,
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 30, 15, 15),
                            child: Column(children: [
                              Image.asset(
                                'assets/images/fxemoji_hospital.png',
                                height: 40,
                                width: 40,
                              ),
                              const Text(
                                "Locate health Centres",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600),
                              )
                            ]),
                          )),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.0),
                                color: Colors.teal,
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(15, 30, 15, 15),
                                child: Column(children: [
                                  Image.asset(
                                    'assets/images/openmoji_female-doctor.png',
                                    height: 40,
                                    width: 40,
                                  ),
                                  const Text(
                                    "Locate health Centres",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600),
                                  )
                                ]),
                              )),
                          Container(
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.0),
                                color: Colors.teal,
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(12, 30, 12, 12),
                                child: Column(children: [
                                  Image.asset(
                                    'assets/images/ic_baseline-calendar-month.png',
                                    height: 40,
                                    width: 40,
                                  ),
                                  const Text(
                                    "Locate health Centres",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600),
                                  )
                                ]),
                              ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: Colors.teal,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
              color: Colors.black,
            ),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
              color: Colors.black,
            ),
            label: 'School',
          ),
        ],
      ),
    );
  }
}
