import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Меню',
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
   TextEditingController nameController = TextEditingController();
   TextEditingController surnameController = TextEditingController();
   TextEditingController patronymicController = TextEditingController();

  String fullName = '';

  void _submit() {
    String name = nameController.text;
    String surname = surnameController.text;
    String patronymic = patronymicController.text;

    if (name.isEmpty || surname.isEmpty || patronymic.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Заполните все поля')),
      );
    } else {
      setState(() {
        fullName = '$surname $name $patronymic'; 
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (fullName.isNotEmpty) ...[
              Text(fullName),
              SizedBox(height: 20),
            ],
            SizedBox(
              width: 400,
              child: TextField(
                controller: nameController,
                textAlign: TextAlign.center,
                decoration:InputDecoration(hintText: 'Введите имя')
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 400,
              child: TextField(
                controller: surnameController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: 'Введите фамилию')
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 400,
              child: TextField(
                controller: patronymicController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: 'Введите отчество')
                ),
              ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: _submit,
              child:Text('Ввод'),
            ),
          ],
        ),
      ),
    );
  }
 
}
