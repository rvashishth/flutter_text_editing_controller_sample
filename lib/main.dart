import 'package:flutter/material.dart';

void main() {
  runApp(FormPage());
}

class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my form page',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  // this will return the statue of this widget
  @override
  State<StatefulWidget> createState() {
    return _MyCustomFormState();
  }
}

class _MyCustomFormState extends State<MyCustomForm> {
  var _textController = TextEditingController();

  @override
  void initState(){
    super.initState();

    _textController.addListener(_printValue);
  }
@override
void dispose(){
    _textController.dispose();
    super.dispose();
}

  _printValue(){
    print('hello mister ${_textController.text}');
  }

  // This will return the actual widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("My Custom Form Bar")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                helperText: 'Enter First name',
                fillColor: Colors.amberAccent,
                filled: true,
              ),
              onChanged: (inputText) => print('HELLO 111  mr. $inputText'),
            ),
            TextField(
              decoration: InputDecoration(
                helperText: 'Enter Last name',
                filled: true,
                fillColor: Colors.amberAccent,
              ),
              //onChanged: (inputText) => print('HELLO 222  mr. $inputText'),
              controller: _textController,
            )
          ],
        ),
      ),
    );
  }
}
