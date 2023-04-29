// import 'package:app/widgets/utils.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Findadoctor extends StatefulWidget {
  const Findadoctor({super.key});

  // const Findadoctor(User? user, {super.key});

  @override
  State<Findadoctor> createState() => FindadoctorState();
}

class FindadoctorState extends State<Findadoctor> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "James, K",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                        width: 10), // add some space between the text and image
                    SizedBox(
                      width: 30, // set the width of the image
                      height: 30, // set the height of the image
                      child: Image.asset('assets/images/picture.png'),
                    ),
                  ],
                ),
                const Column(
                  children: [
                    Text("Find a doctor",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.teal)),
                  ],
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
