import 'package:flutter/material.dart';

class AppointmentCard extends StatefulWidget {
  String name = '';
  String time = '';
  String details = '';

  AppointmentCard(
      {Key? key, required this.name, required this.time, required this.details})
      : super(key: key);

  @override
  State<AppointmentCard> createState() => _AppointmentCardState();
}

List<Map<String, String>> appointmentData = [
  {
    'name': 'Modupe West',
    'time': '10am - 10am',
    'details': 'Patient details',
  },
  // {
  //   'name': 'Mayo West',
  //   'time': '11am - 1pm',
  //   'details': 'Patient details',
  // },
  // {
  //   'name': 'Bayo West',
  //   'time': '11am - 10pm',
  //   'details': 'Patient details',
  // },
  // {
  //   'name': 'Juliet West',
  //   'time': '11am - 1pm',
  //   'details': 'Patient details',
  // },
];
List<Map<String, String>> repeatedAppointmentData = [
  for (int i = 0; i < 4; i++) ...appointmentData,
];

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
                    width: 42.0,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.teal),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
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
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
                child: Column(
                  children: repeatedAppointmentData.map((data) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: ListTile(
                            title: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: data['name'] ?? '',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          WidgetSpan(child: SizedBox(width: 4)),
                                          WidgetSpan(
                                            child: Transform.translate(
                                              offset: const Offset(0.0, -6.0),
                                              child: Text(
                                                'New',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 6, 0, 0),
                                      child: Text(
                                        data['time'] ?? '',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.teal,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 95.0),
                                Container(
                                  width: 95.0,
                                  height: 25.0,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      side: const BorderSide(
                                        width: 1,
                                        color: Colors.teal,
                                      ),
                                      padding:
                                          const EdgeInsets.fromLTRB(6, 0, 6, 0),
                                      foregroundColor: Colors.teal,
                                      textStyle: const TextStyle(
                                        fontSize: 14,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                    ),
                                    child: Text(data['details'] ?? ''),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
