// import 'package:flutter/material.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);

//   @override
//   State<ProfilePage> createState() => _ProfilePage();
// }

// class _ProfilePage extends State<ProfilePage> {
//   bool ischecked = false;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ListView(
//         padding: const EdgeInsets.all(8.0),
//         children: <Widget>[
//           const SizedBox(
//             height: 50,
//           ),
//           CheckboxListTile(
//             title: const TextField(),
//             tileColor: Colors.amber[300],
//             value: ischecked,
//             onChanged: (bool? value) {
//               setState(() {
//                 ischecked = value!;
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
