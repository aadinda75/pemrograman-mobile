import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// ==========================================
// Langkah 3: Scaffold Widget
// Scaffold widget digunakan untuk mengatur
// tata letak sesuai dengan material design.
// ==========================================
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'My Increment App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // Langkah 4: body menggunakan MyLayout
      body: MyLayout(counter: _counter),

      // Langkah 3: BottomNavigationBar
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}

// ==========================================
// Langkah 4: Dialog Widget
// Dialog widget pada flutter memiliki dua
// jenis dialog yaitu AlertDialog dan
// SimpleDialog.
// ==========================================
class MyLayout extends StatelessWidget {
  final int counter;

  const MyLayout({Key? key, required this.counter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Langkah 3: Tampilan counter
          Text(
            '$counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),

          const SizedBox(height: 20),

          // Langkah 4: Tombol untuk show AlertDialog
          ElevatedButton(
            child: const Text('Show alert'),
            onPressed: () {
              showAlertDialog(context);
            },
          ),

          const SizedBox(height: 20),

          // ==========================================
          // Langkah 5: Input dan Selection Widget
          // Flutter menyediakan widget yang dapat
          // menerima input dari pengguna aplikasi
          // yaitu antara lain Checkbox, Date and Time
          // Pickers, Radio Button, Slider, Switch,
          // TextField.
          // Contoh penggunaan TextField widget:
          // ==========================================
          const TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nama',
            ),
          ),

          const SizedBox(height: 20),

          // ==========================================
          // Langkah 6: Date and Time Pickers
          // Date and Time Pickers termasuk pada
          // kategori input dan selection widget.
          // ==========================================
          const DatePickerWidget(),
        ],
      ),
    );
  }
}

// Langkah 4: fungsi showAlertDialog
showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("My title"),
    content: const Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

// ==========================================
// Langkah 6: Date and Time Picker Widget
// ==========================================
class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({Key? key}) : super(key: key);

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  // Variable/State untuk mengambil tanggal
  DateTime selectedDate = DateTime.now();

  // Initial SelectDate Flutter
  Future<void> _selectDate(BuildContext context) async {
    // Initial DateTime Final Picked
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
      print(selectedDate.day + selectedDate.month + selectedDate.year);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "${selectedDate.toLocal()}".split(' ')[0],
        ),
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () => _selectDate(context),
          child: const Text('Pilih Tanggal'),
        ),
      ],
    );
  }
}