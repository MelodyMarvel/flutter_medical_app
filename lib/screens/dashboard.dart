import 'package:flutter/material.dart';
import '/widgets/appointment_card.dart';
import '/widgets/med_info.dart';
import '/widgets/appBar.dart';

void main() => runApp(MaterialApp(
      home: DashboardScreen(),
    ));

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 14, 20, 0),
                child: ClipRRect(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
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
              AppointmentCard(
                  name: 'appointmentData.name',
                  time: 'appointmentData.time',
                  details: 'appointmentData.details'),
              MedInfo(
                  image: 'medInfoData.image',
                  text: 'medInfoData.text',
                  text_label: 'medInfoData.text_label'),
              SizedBox(height: 20),
              Divider(
                height: 2.0,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
