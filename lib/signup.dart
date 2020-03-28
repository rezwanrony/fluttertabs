import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class signup extends StatelessWidget{
  TextEditingController fullnamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController dobcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sign Up',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),centerTitle: true,backgroundColor: Colors.transparent,elevation: 0.0,
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  width: 80,
                  height: 80,
                  child: Image.asset("images/propic2.png"),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: TextField(
                  controller: fullnamecontroller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    border: OutlineInputBorder(),
                    labelText: 'Full Name'
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(5),
                      border: OutlineInputBorder(),
                      labelText: 'Email'
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: TextField(
                  controller: dobcontroller,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(5),
                    suffixIcon: Icon(Icons.date_range),
                      border: OutlineInputBorder(
                      ),
                      labelText: 'Date Of Birth',
                  ),
                  keyboardType: TextInputType.datetime,
                  onTap: (){
                    DatePicker.showDatePicker(context,
                        showTitleActions: true,
                        minTime: DateTime(2018, 3, 5),
                        maxTime: DateTime(2019, 6, 7), onChanged: (date) {
                          print('change $date');
                        }, onConfirm: (date) {
                          print('confirm $date');
                        }, currentTime: DateTime.now(), locale: LocaleType.zh);
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: RadioGroup(),
              ),
              Container(
                  width: 120,
                  height: 40,
                  margin: EdgeInsets.only(top: 20),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.black,
                    child: Text('Sign Up'),
                    onPressed: () {
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }

}

class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class RadioGroupWidget extends State {

  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'Male';

  // Group Value for Radio Button.
  int id = 1;

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
       Container(
         padding: EdgeInsets.only(top: 10,bottom: 10),
         child: Text('Gender',style: TextStyle(color: Colors.black,fontSize: 17.0))
       ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Radio(
              value: 'Male',
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Male';
                  id = 1;
                });
              },
            ),
            Text(
              'Male',
              style: new TextStyle(fontSize: 17.0),
            ),

            Radio(
              value: 'Female',
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Female';
                  id = 2;
                });
              },
            ),
            Text(
              'Female',
              style: new TextStyle(
                fontSize: 17.0,
              ),
            ),

            Radio(
              value: 'Others',
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Others';
                  id = 3;
                });
              },
            ),
            Text(
              'Others',
              style: new TextStyle(fontSize: 17.0),
            ),
          ],
        ),
      ],
    );
  }
}

