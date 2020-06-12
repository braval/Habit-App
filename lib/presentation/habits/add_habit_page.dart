// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class AddTaskScreen extends StatelessWidget {
//   final myController = TextEditingController();

//   @override
//   void dispose() {
//     myController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0)),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(35.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Task Name',
//               style: TextStyle(
//                 color: Colors.black54,
//                 fontWeight: FontWeight.w500,
//                 fontSize: 18.0,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 top: 16.0,
//                 bottom: 16.0,
//               ),
//               child: TextFormField(
//                 controller: myController,
//                 decoration: InputDecoration(
//                   hintText: 'What\'s on your mind?',
//                   filled: true,
//                   fillColor: Colors.grey[100],
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                     borderSide: BorderSide(color: Colors.grey),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                     borderSide: BorderSide(color: Colors.grey),
//                   ),
//                 ),
//               ),
//             ),
//             Consumer<TaskData>(
//               builder:
//                   (BuildContext context, TaskData taskData, Widget child) =>
//                       RawMaterialButton(
//                 splashColor: Colors.cyan,
//                 onPressed: () {
//                   taskData.addPendingTask(Task(name: myController.text));
//                   myController.clear();
//                   Navigator.pop(context);
//                 },
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(40.0),
//                 ),
//                 fillColor: Colors.cyan,
//                 child: Container(
//                   height: 50.0,
//                   width: double.infinity,
//                   child: Center(
//                     child: Text(
//                       'Add Task',
//                       style: TextStyle(
//                         fontSize: 18.0,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
