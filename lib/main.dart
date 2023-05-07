import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}
 String password="";
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final GlobalKey<ScaffoldState> _scafooldState = GlobalKey<ScaffoldState>();
    return Scaffold(
      body: Form(
          key: formKey,
          child: Column(
            children: [
              Text(
                'Create Account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextFormField(
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[a-z A-Z]'))
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter correct name';
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                      labelText: 'Full Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      suffixIcon: Icon(Icons.person)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextFormField(
                  validator: (value) {
                    int a = value.toString().indexOf("@gmail.com");
                    print(a);
                    if (value.toString().length != a + 10) {
                      return "not found!";
                    }
                    if (value == null ||
                        value.isEmpty ||
                        !value.contains('@gmail.com')) {
                      return 'Enter correct email';
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                      labelText: 'Email Address',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      suffixIcon: Icon(Icons.email)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextFormField(
                  inputFormatters: [
                    FilteringTextInputFormatter.deny(RegExp('[a-z, ]')),
                    FilteringTextInputFormatter.allow(RegExp('[0-9 ,+]'))
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 13) {
                      return 'Enter correct number';
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      suffixIcon: Icon(Icons.phone)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextFormField(
                  inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[a-z 0-9]'))],
                  validator: (value) {
                    password=value.toString();
                    if (value == null || value.isEmpty) {
                      return 'Enter correct password';
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      suffixIcon: Icon(Icons.safety_check)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextFormField(
                  inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[a-z 0-9]'))],
                  validator: (value) {
                    if (value == null || value.isEmpty || value!=password) {
                      return 'Passwords not confirm';
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                      labelText: 'Confirm password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      suffixIcon: Icon(Icons.check_box_rounded)),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text('Agree with Terms & Conditions'),
                        value: val,
                        onChanged: (value) {
                          setState(() {
                            val = !val;
                          });
                        }),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(25),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        fixedSize: Size(400, 45)),
                    onPressed: () {
                      formKey.currentState!.validate();
                    },
                    child: Text('Create Account')),
              ),
              Text('Already have an account? Login')
            ],
          )),
    );
  }
}
