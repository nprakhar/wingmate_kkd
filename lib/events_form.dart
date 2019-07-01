import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';



class EventsForm extends StatefulWidget{
  @override
  EventsFormScreen createState() {
    return new EventsFormScreen();
  }

}

class EventsFormScreen extends State<EventsForm> {
  DateTime date1;
  DateTime date2;
  DateTime date3;

  @override

  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
            'Create an Event',
            style: TextStyle(
              color: Colors.white,
            )
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: ListView(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.event),
                hintText: "What's the Event?",
                labelText: 'Event *',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.location_on),
                hintText: "Where is the party?",
                labelText: 'Location',
              ),
            ),
            DateTimePickerFormField(
              inputType: InputType.date,
              format: DateFormat("dd-MM-yyyy"),
              initialDate: DateTime.now(),
              editable: false,
              decoration: InputDecoration(
                  labelText: 'Date',
                  hasFloatingPlaceholder: false
              ),
              onChanged: (dt) {
                setState(() => date2 = dt);
                print('Selected date: $date2');
              },
            ),
            DateTimePickerFormField(
              inputType: InputType.time,
              format: DateFormat("HH:mm"),
              initialTime: TimeOfDay(hour: 0, minute: 0),
              editable: false,
              decoration: InputDecoration(
                  labelText: 'Time',
                  hasFloatingPlaceholder: false
              ),
              onChanged: (dt) {
                setState(() => date3 = dt);
                print('Selected date: $date3');
                print('Hour: $date3.hour');
                print('Minute: $date3.minute');
              },
            ),
            SizedBox(height: 16.0),
            RaisedButton(
              onPressed: () => debugPrint("Event Created"),
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text('Create Event', style: TextStyle(fontSize: 20)),
            )
          ],
        ),
      ),
  );

}