import 'package:flutter/material.dart';
import 'package:project_1/fio_page.dart';
import 'package:reactive_forms/reactive_forms.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final form = FormGroup({
    'name': FormControl<String>(validators: [Validators.required]),
    'surname': FormControl<String>(validators: [Validators.required]),
    'patronymic': FormControl<String>(validators: [Validators.required]),
  });

  void _submit() {
    if (form.valid) {
      final fullName = '${form.control('surname').value} '
          '${form.control('name').value} '
          '${form.control('patronymic').value}';
      
      Navigator.push(context,
       MaterialPageRoute(
        builder: (context) => FioPage(
          fullName:fullName,
       ),
      ),
    );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Заполните все поля')),
      );
      form.markAllAsTouched();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Меню'),
        leading: Icon(Icons.home),
      ),
      body: Center(
        child: ReactiveForm(
          formGroup: form,
           child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 400,
                child: ReactiveTextField<String>(
                  formControlName: 'name',
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Введите имя',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                child: ReactiveTextField<String>(
                  formControlName: 'surname',
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Введите фамилию'
                  ),
                ),
              ),
              SizedBox( height: 20),
              SizedBox(
                width: 400,
                child: ReactiveTextField(
                  formControlName: 'patronymic',
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Введите отчество',
                  ),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(onPressed: _submit, 
              child: const Text ('Ввод')),
            ],
          ),
        ),
      ),
    );
  }
}

