import 'package:flutter/material.dart';
import 'appointment_card.dart';
import 'med_info.dart';

void main() => runApp(MaterialApp(
      home: Dashboard(),
    ));

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  static int _currentIndex = 0;

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
        body: SingleChildScrollView(
          child: Column(
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
             
              AppointmentCard(),
MedInfo(),
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: Container(
              //     child: Row(
              //       children: [
              //         Expanded(
              //           flex: 2,
              //           child: Column(
              //             children: [
              //               Image.asset(
              //                 'assets/patient.png',
              //                 width: 40.0,
              //                 height: 40.0,
              //                 fit: BoxFit.cover,
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.all(2.0),
              //                 child: Text(
              //                   '345',
              //                   style: TextStyle(
              //                     fontWeight: FontWeight.bold,
              //                     color: Colors.blue,
              //                   ),
              //                 ),
              //               ),
              //               Text(
              //                 'Patients',
              //                 style: TextStyle(
              //                   color: Colors.blue,
              //                   fontWeight: FontWeight.bold,
              //                 ),
              //               )
              //             ],
              //           ),
              //         ),
              //         Expanded(
              //           flex: 2,
              //           child: Column(
              //             children: [
              //               Image.asset(
              //                 'assets/prescription.png',
              //                 width: 40.0,
              //                 height: 40.0,
              //                 fit: BoxFit.cover,
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.all(2.0),
              //                 child: Text(
              //                   '23',
              //                   style: TextStyle(
              //                     fontWeight: FontWeight.bold,
              //                     color: Colors.blue,
              //                   ),
              //                 ),
              //               ),
              //               Text(
              //                 'Prescriptions',
              //                 style: TextStyle(
              //                   color: Colors.blue,
              //                   fontWeight: FontWeight.bold,
              //                 ),
              //               )
              //             ],
              //           ),
              //         ),
              //         Expanded(
              //           flex: 2,
              //           child: Column(
              //             children: [
              //               Image.asset(
              //                 'assets/alarm2.png',
              //                 width: 40.0,
              //                 height: 40.0,
              //                 fit: BoxFit.cover,
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.all(2.0),
              //                 child: Text(
              //                   '120 mins',
              //                   style: TextStyle(
              //                     fontWeight: FontWeight.bold,
              //                     color: Colors.blue,
              //                   ),
              //                 ),
              //               ),
              //               Text(
              //                 '2 hrs',
              //                 style: TextStyle(
              //                   color: Colors.blue,
              //                   fontWeight: FontWeight.bold,
              //                 ),
              //               )
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: Container(
              //     child: Row(
              //       children: [
              //         Expanded(
              //           flex: 2,
              //           child: Column(
              //             children: [
              //               Image.asset(
              //                 'assets/note.png',
              //                 width: 40.0,
              //                 height: 40.0,
              //                 fit: BoxFit.cover,
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.all(2.0),
              //                 child: Text(
              //                   '5',
              //                   style: TextStyle(
              //                     fontWeight: FontWeight.bold,
              //                     color: Colors.blue,
              //                   ),
              //                 ),
              //               ),
              //               Text(
              //                 'Consultations',
              //                 style: TextStyle(
              //                   color: Colors.blue,
              //                   fontWeight: FontWeight.bold,
              //                 ),
              //               )
              //             ],
              //           ),
              //         ),
              //         Expanded(
              //           flex: 2,
              //           child: Column(
              //             children: [
              //               Image.asset(
              //                 'assets/med_note.png',
              //                 width: 40.0,
              //                 height: 40.0,
              //                 fit: BoxFit.cover,
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.all(2.0),
              //                 child: Text(
              //                   '4 Notes',
              //                   style: TextStyle(
              //                     fontWeight: FontWeight.bold,
              //                     color: Colors.blue,
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //         Expanded(
              //           flex: 2,
              //           child: Column(
              //             children: [
              //               Image.asset(
              //                 'assets/dollar.png',
              //                 width: 40.0,
              //                 height: 40.0,
              //                 fit: BoxFit.cover,
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.all(2.0),
              //                 child: Text(
              //                   '# 100,000',
              //                   style: TextStyle(
              //                     fontWeight: FontWeight.bold,
              //                     color: Colors.blue,
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              SizedBox(height: 20),
              Divider(
                height: 2.0,
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child:const Row(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Icon(Icons.dashboard, color:Colors.teal),
                              SizedBox(height:5), 
                              Text(
                                'Dashboard',
                                style: TextStyle(
                                    fontSize:12, color:Colors.teal), 
                              ), 
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Icon(Icons.schedule, color:Colors.blue),
                              SizedBox(
                                  height:5), 
                              Text(
                                'Schedule',
                                style: TextStyle(
                                    fontSize:12, color:Colors.blue), 
                              ),
                              
                            ],
                          )),
                           Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Icon(Icons.people, color:Colors.blue),
                              SizedBox(
                                  height:5), 
                              Text(
                                'People',
                                style: TextStyle(
                                    fontSize:12, color:Colors.blue),
                              ),
                            ],
                          )),
                           Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Icon(Icons.person, color:Colors.blue),
                              SizedBox(
                                  height:5),
                              Text(
                                'Profile',
                                style: TextStyle(
                                    fontSize:12, color:Colors.blue),
                              ),
                              
                            ],
                          )),
                           Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Icon(Icons.settings, color:Colors.blue),
                              SizedBox(
                                  height:5), 
                              Text(
                                'Settings',
                                style: TextStyle(
                                    fontSize:12, color:Colors.blue),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
  


