import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:one/widgets/Clinic.dart';

class NearbyHealthFacilities extends StatefulWidget {
  const NearbyHealthFacilities({super.key});

  @override
  State<NearbyHealthFacilities> createState() => _NearbyHealthFacilitiesState();
}

class _NearbyHealthFacilitiesState extends State<NearbyHealthFacilities> {
  @override
  Widget build(BuildContext context) {
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
                Column(
                  children: [
                    Text("Nearby Health Facilities",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.teal)),
                  ],
                ),
                Container(
                  height: 40,
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      hintText: "Search Nearby Doctors",
                      suffixIcon: Icon(Icons.search, color: Colors.teal),
                      hintStyle: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Column(
                  children: [Clinic(), Clinic(), Clinic()],
                ),
              ],
            ),
          ),
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
