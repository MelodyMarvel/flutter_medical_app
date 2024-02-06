import 'package:flutter/material.dart';

class MedInfo extends StatefulWidget {

  String image='';
  String text='';
  String text_label='';

   MedInfo({
    Key? key,
    required this.image,
    required this.text,
    required this.text_label
  }): super(key: key);

  @override
  State<MedInfo> createState() => _MedInfoState();
}
  List<Map<String, String>> medInfoData = [
  {
    'image': 'assets/patient.png',
    'text': '345',
    'text_label': 'Patients',
  },
    {
    'image': 'assets/prescription.png',
    'text': '23',
    'text_label': 'Prescription',
  },
   {
    'image': 'assets/alarm2.png',
    'text': '120 mins',
    'text_label': '2 hrs',
  },
  {
    'image': 'assets/note.png',
    'text': '5',
    'text_label': 'Consultation',
  },
  {
    'image': 'assets/med_note.png',
    'text': '4 notes',
    // 'text_label': '',
  },
  {
    'image': 'assets/dollar.png',
    'text': '#100,000',
    // 'text_label': '2 hrs',
  },
];

List<Map<String, String>> repeatedMedData = [
  for (int i = 0; i < 1; i++) ...medInfoData,
];

class _MedInfoState extends State<MedInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Wrap(
        spacing: 10.0, // horizontal space between the items
        runSpacing: 24.0, // vertical space between the rows
        children: medInfoData.map((data) {
          return SizedBox(
            width: MediaQuery.of(context).size.width / 3 - 30, // adjust the width of each item
            child: Column(
              children: [
                Image.asset(
                  data['image'] ?? '',
                  width: 40.0,
                  height: 40.0,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    data['text'] ?? '',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Text(
                  data['text_label'] ?? '',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
                      ),
                    ),
       
  
              //  Padding(
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
              //         // Expanded(
              //         //   flex: 2,
              //         //   child: Column(
              //         //     children: [
              //         //       Image.asset(
              //         //         'assets/med_note.png',
              //         //         width: 40.0,
              //         //         height: 40.0,
              //         //         fit: BoxFit.cover,
              //         //       ),
              //         //       Padding(
              //         //         padding: const EdgeInsets.all(2.0),
              //         //         child: Text(
              //         //           '4 Notes',
              //         //           style: TextStyle(
              //         //             fontWeight: FontWeight.bold,
              //         //             color: Colors.blue,
              //         //           ),
              //         //         ),
              //         //       ),
              //         //     ],
              //         //   ),
              //         // ),
              //         // Expanded(
              //         //   flex: 2,
              //         //   child: Column(
              //         //     children: [
              //         //       Image.asset(
              //         //         'assets/dollar.png',
              //         //         width: 40.0,
              //         //         height: 40.0,
              //         //         fit: BoxFit.cover,
              //         //       ),
              //         //       Padding(
              //         //         padding: const EdgeInsets.all(2.0),
              //         //         child: Text(
              //         //           '# 100,000',
              //         //           style: TextStyle(
              //         //             fontWeight: FontWeight.bold,
              //         //             color: Colors.blue,
              //         //           ),
              //         //         ),
              //         //       ),
              //         //     ],
              //         //   ),
              //         // ),
              //       ],
              //     ),
              //   ),
              // )
               ],
      ),
                );
  }
}