import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          child: Column(
        children: [
          Text(
            'Create Account',
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
          ),
          Padding(
            padding: EdgeInsets.all(17),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  suffixIcon: Icon(Icons.person)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(17),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  suffixIcon: Icon(Icons.email)),
            ),
          ),
            Padding(
            padding: EdgeInsets.all(17),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  suffixIcon: Icon(Icons.phone)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(17),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  suffixIcon: Icon(Icons.safety_check)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(17),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: 'Confirm password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  suffixIcon: Icon(Icons.check_box_rounded)),
            ),
          ),
        ],
      )),
    );
  }
}
