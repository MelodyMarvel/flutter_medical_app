import 'package:flutter/material.dart';

class AppointmentCard extends StatefulWidget {
  @override
  State<AppointmentCard> createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<AppointmentCard> {
  @override
  Widget build(BuildContext context) {
                  return Padding(
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
                                width:
                                    42.0,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors
                                          .teal), 
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8.0), 
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
                                    color: Colors.blue, 
                                    width: 1.0, 
                                  ),
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 6, 0, 6),
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
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,),
                                                ),
                                                WidgetSpan(
                                                    child: SizedBox(width: 4)),
                                                WidgetSpan(
                                                  child: Transform.translate(
                                                    offset: const Offset(0.0,
                                                        -6.0),
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
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(0,6,0,0),
                                            child: Text(
                                              '10am - 11am',
                                              style: TextStyle(
                                                  fontSize: 14, color: Colors.teal),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(width: 116.0),

                                      Container(
                                        width: 95.0,
                                        height: 25.0,
                                        child: TextButton(
                                          
                                          style: TextButton.styleFrom(
                                            side: const BorderSide(
                                                width: 1, color: Colors.teal),
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 0, 6, 0),
                                            foregroundColor: Colors.teal,
                                            textStyle: const TextStyle(
                                                fontSize: 14,
                                                // fontWeight: FontWeight.bold
                                                ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                          ),
                                          child: const Text('Patient details'),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10, 10, 0),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 1.0, 
                                  ),
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 6, 0, 6),
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
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,),
                                                ),
                                                WidgetSpan(
                                                    child: SizedBox(width: 4)),
                                                WidgetSpan(
                                                  child: Transform.translate(
                                                    offset: const Offset(0.0,
                                                        -6.0),
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
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(0,6,0,0),
                                            child: Text(
                                              '10am - 11am',
                                              style: TextStyle(
                                                  fontSize: 14, color: Colors.teal),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(width: 116.0),

                                      Container(
                                        width: 95.0,
                                        height: 25.0,
                                        child: TextButton(
                                          
                                          style: TextButton.styleFrom(
                                            side: const BorderSide(
                                                width: 1, color: Colors.teal),
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 0, 6, 0),
                                            foregroundColor: Colors.teal,
                                            textStyle: const TextStyle(
                                                fontSize: 14,
                                                // fontWeight: FontWeight.bold
                                                ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                          ),
                                          child: const Text('Patient details'),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10, 10, 0),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue, // Set the border color
                                    width: 1.0, // Set the border width
                                  ),
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 6, 0, 6),
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
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,),
                                                ),
                                                WidgetSpan(
                                                    child: SizedBox(width: 4)),
                                                WidgetSpan(
                                                  child: Transform.translate(
                                                    offset: const Offset(0.0,
                                                        -6.0),
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
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(0,6,0,0),
                                            child: Text(
                                              '10am - 11am',
                                              style: TextStyle(
                                                  fontSize: 14, color: Colors.teal),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(width: 116.0),

                                      Container(
                                        width: 95.0,
                                        height: 25.0,
                                        child: TextButton(
                                          
                                          style: TextButton.styleFrom(
                                            side: const BorderSide(
                                                width: 1, color: Colors.teal),
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 0, 6, 0),
                                            foregroundColor: Colors.teal,
                                            textStyle: const TextStyle(
                                                fontSize: 14,
                                                // fontWeight: FontWeight.bold
                                                ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                          ),
                                          child: const Text('Patient details'),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10, 10, 10),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue, 
                                    width: 1.0, 
                                  ),
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 6, 0, 6),
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
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,),
                                                ),
                                                WidgetSpan(
                                                    child: SizedBox(width: 4)),
                                                WidgetSpan(
                                                  child: Transform.translate(
                                                    offset: const Offset(0.0,
                                                        -6.0),
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
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(0,6,0,0),
                                            child: Text(
                                              '10am - 11am',
                                              style: TextStyle(
                                                  fontSize: 14, color: Colors.teal),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(width: 116.0),

                                      Container(
                                        width: 95.0,
                                        height: 25.0,
                                        child: TextButton(
                                          
                                          style: TextButton.styleFrom(
                                            side: const BorderSide(
                                                width: 1, color: Colors.teal),
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 0, 6, 0),
                                            foregroundColor: Colors.teal,
                                            textStyle: const TextStyle(
                                                fontSize: 14,
                                                // fontWeight: FontWeight.bold
                                                ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                          ),
                                          child: const Text('Patient details'),
                                          onPressed: () {},
                                        ),
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
                );
              
  }
}
