import 'package:flutter/material.dart';


class FioPage extends StatefulWidget {
  final String fullName;

  const FioPage({super.key, required this.fullName});

  @override
  State<FioPage> createState() => _FioPageState();
}

class _FioPageState extends State<FioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Вывод') ,
      ),
      body: Center(
        child:
        Text('Привет, ${widget.fullName}!'),
      ),
    );
  }
}
