import 'package:flutter/material.dart';
import '/widgets/appBar.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: CustomAppBar(),
        body: Container(
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
             
      
              
              SizedBox(height: 20),
              Divider(
                height: 2.0,
                color: Colors.blue,
              ),       

            ],
          ),
        ),
    );
  }
}