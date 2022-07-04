import 'package:flutter/material.dart';

class DoctorInfoPG extends StatefulWidget {
  const DoctorInfoPG({Key? key}) : super(key: key);

  @override
  State<DoctorInfoPG> createState() => _DoctorInfoPGState();
}

class _DoctorInfoPGState extends State<DoctorInfoPG> {



 List<String> locations = ['Please choose a location', 'A', 'B', 'C', 'D'];
 String selectedLocation = 'Please choose a location';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(""),),
    body: Center(
          child: DropdownButton(
            value: selectedLocation,
            onChanged: (newValue) {
              setState(() {
                selectedLocation = newValue.toString();
              });
            },
            items: locations.map((location) {
              return DropdownMenuItem(
                child: new Text(location),
                value: location,
              );
            }).toList(),
          ),
        ),
      );
  }
}
