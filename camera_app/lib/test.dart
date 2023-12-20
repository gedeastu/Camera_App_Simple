// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('ListView with Dropdown Example'),
//         ),
//         body: ListView.builder(
//           itemCount: 5, // Replace with your actual item count
//           itemBuilder: (BuildContext context, int index) {
//             return MyListItem(index: index);
//           },
//         ),
//       ),
//     );
//   }
// }

// class MyListItem extends StatefulWidget {
//   final int index;

//   const MyListItem({required this.index});

//   @override
//   _MyListItemState createState() => _MyListItemState();
// }

// class _MyListItemState extends State<MyListItem> {
//   String dropdownValue = 'Option 1'; // Initial dropdown value

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text('Item ${widget.index}'),
//       trailing: PopupMenuButton<String>(
//         onSelected: (String value) {
//           setState(() {
//             dropdownValue = value; // Update dropdown value
//           });
//         },
//         itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
//           PopupMenuItem<String>(
//             value: 'Option 1',
//             child: Text('Option 1'),
//           ),
//           PopupMenuItem<String>(
//             value: 'Option 2',
//             child: Text('Option 2'),
//           ),
//           PopupMenuItem<String>(
//             value: 'Option 3',
//             child: Text('Option 3'),
//           ),
//         ],
//         child: TextButton(
//           onPressed: () {
//             // Handle button press for this item
//             print('Button pressed for item ${widget.index}');
//           },
//           child: Text('Button'),
//         ),
//       ),
//     );
//   }
// }
