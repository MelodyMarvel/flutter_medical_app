import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Dashboard(),
    ));

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
      child: Scaffold(
        // drawer: Drawer(),
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                },
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 6.0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good morning Dr. Abigail',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text(
                          'Its a greate day to work',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50.0, 20.0, 10.0, 0.0),
                  child: IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: () {},
                    color: Colors.teal[600],
                    iconSize: 28.0,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 0, 0.0, 0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/mel.jpg'),
                    radius: 30.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 20, 20, 0),
              child: ClipRRect(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Patients',
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.teal[600],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 20, 20, 0),
              child: Card(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10, 10, 10),
                      child: Row(
                        children: [
                          Text(
                            'Today\'s Appointment',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 42.0, // Add the desired width for separation
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.teal), // Set the background color
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      8.0), // Adjust the border radius
                                ),
                              ),
                            ),
                            child: Text(
                              'Set Reminder',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 20, 10, 0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blue, // Set the border color
                                width: 1.0, // Set the border width
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Modupe West',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14),
                                            ),
                                            WidgetSpan(
                                                child: SizedBox(width: 4)),
                                            WidgetSpan(
                                              child: Transform.translate(
                                                offset: const Offset(0.0,
                                                    -6.0), // Adjust the offset to position the superscript
                                                child: Text(
                                                  'New',
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize:
                                                          10), // Adjust the font size
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        '10am - 11am',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.teal),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 120.0),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      side: const BorderSide(
                                          width: 1, color: Colors.teal),
                                      padding:
                                          const EdgeInsets.fromLTRB(6, 0, 6, 0),
                                      foregroundColor: Colors.teal,
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    child: const Text('Patient details'),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 20, 10, 0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blue, // Set the border color
                                width: 1.0, // Set the border width
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Modupe West',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14),
                                            ),
                                            WidgetSpan(
                                                child: SizedBox(width: 4)),
                                            WidgetSpan(
                                              child: Transform.translate(
                                                offset: const Offset(0.0,
                                                    -6.0), // Adjust the offset to position the superscript
                                                child: Text(
                                                  'New',
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize:
                                                          10), // Adjust the font size
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        '10am - 11am',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.teal),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 120.0),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      side: const BorderSide(
                                          width: 1, color: Colors.teal),
                                      padding:
                                          const EdgeInsets.fromLTRB(6, 0, 6, 0),
                                      foregroundColor: Colors.teal,
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    child: const Text('Patient details'),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 20, 10, 0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blue, // Set the border color
                                width: 1.0, // Set the border width
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Modupe West',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14),
                                            ),
                                            WidgetSpan(
                                                child: SizedBox(width: 4)),
                                            WidgetSpan(
                                              child: Transform.translate(
                                                offset: const Offset(0.0,
                                                    -6.0), // Adjust the offset to position the superscript
                                                child: Text(
                                                  'New',
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize:
                                                          10), // Adjust the font size
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        '10am - 11am',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.teal),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 120.0),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      side: const BorderSide(
                                          width: 1, color: Colors.teal),
                                      padding:
                                          const EdgeInsets.fromLTRB(6, 0, 6, 0),
                                      foregroundColor: Colors.teal,
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    child: const Text('Patient details'),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 20, 10, 10),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blue, // Set the border color
                                width: 1.0, // Set the border width
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Modupe West',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14),
                                            ),
                                            WidgetSpan(
                                                child: SizedBox(width: 4)),
                                            WidgetSpan(
                                              child: Transform.translate(
                                                offset: const Offset(0.0,
                                                    -6.0), // Adjust the offset to position the superscript
                                                child: Text(
                                                  'New',
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize:
                                                          10), // Adjust the font size
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        '10am - 11am',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.teal),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 120.0),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      side: const BorderSide(
                                          width: 1, color: Colors.teal),
                                      padding:
                                          const EdgeInsets.fromLTRB(6, 0, 6, 0),
                                      foregroundColor: Colors.teal,
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    child: const Text('Patient details'),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/patient.png', 
                            width: 50.0, 
                            height: 50.0, 
                            fit: BoxFit
                                .cover, 
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              '345',
                              style: TextStyle(
                                fontWeight:
                                    FontWeight.bold, 
                                color: Colors.blue, 
                              ),
                            ),
                          ),
                          Text(
                            'Patients',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight:
                                  FontWeight.bold, 
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/prescription.png', 
                            width: 50.0, 
                            height: 50.0, 
                            fit: BoxFit
                                .cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              '23',
                              style: TextStyle(
                                fontWeight:
                                    FontWeight.bold, 
                                color: Colors.blue, 
                              ),
                            ),
                          ),
                          Text(
                            'Prescriptions',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight:
                                  FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/alarm2.png', 
                            width: 50.0, 
                            height: 50.0, 
                            fit: BoxFit
                                .cover, 
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              '120 mins',
                              style: TextStyle(
                                fontWeight:
                                    FontWeight.bold, 
                                color: Colors.blue, 
                              ),
                            ),
                          ),
                          Text(
                            '2 hrs',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight:
                                  FontWeight.bold, 
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

             Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/note.png', 
                            width: 50.0, 
                            height: 50.0, 
                            fit: BoxFit
                                .cover, 
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              '5',
                              style: TextStyle(
                                fontWeight:
                                    FontWeight.bold, 
                                color: Colors.blue, 
                              ),
                            ),
                          ),
                          Text(
                            'Consultations',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight:
                                  FontWeight.bold, 
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/med_note.png', 
                            width: 50.0, 
                            height: 50.0, 
                            fit: BoxFit
                                .cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              '4 Notes',
                              style: TextStyle(
                                fontWeight:
                                    FontWeight.bold, 
                                color: Colors.blue, 
                              ),
                            ),
                          ),
                        
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/dollar.png', 
                            width: 50.0, 
                            height: 50.0, 
                            fit: BoxFit
                                .cover, 
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              '# 100,000',
                              style: TextStyle(
                                fontWeight:
                                    FontWeight.bold, 
                                color: Colors.blue, 
                              ),
                            ),
                          ),
                         
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
