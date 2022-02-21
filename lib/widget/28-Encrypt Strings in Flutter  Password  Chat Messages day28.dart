// // ignore_for_file: unused_local_variable

// import 'package:flutter/material.dart';
// import 'package:flutter_string_encryption/flutter_string_encryption.dart';

// class EncryptString extends StatefulWidget {
//   const EncryptString({Key? key}) : super(key: key);

//   @override
//   _EncryptStringState createState() => _EncryptStringState();
// }

// class _EncryptStringState extends State<EncryptString> {
//   TextEditingController controller = TextEditingController();
//   String encryptedtext = 'Encrypted Text';
//   String decryptedtext = 'Decrypted Text';
//   late PlatformStringCryptor cryptor;
//   String final_key = '';

//   void encrypt() async {
//     cryptor = PlatformStringCryptor();
//     final salt = await cryptor.generateSalt();
//     String key = await cryptor.generateKeyFromPassword(controller.text, salt);
//     String encrypted = await cryptor.encrypt(controller.text, key);

//     setState(() {
//       final_key = key;
//       encryptedtext = encrypted;
//     });
//   }

//    void decrypt() async {
//     try {
//       String decrypted = await cryptor.decrypt(encryptedtext, final_key);
//       setState(() {
//         decryptedtext = decrypted;
//       });
//     } on MacMismatchException {}
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Encrypt Strings in Flutter"),
//         centerTitle: true,
//       ),
//       body: Container(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: controller,
//             ),
//             SizedBox(height: 20),
//             TextButton(
//                 onPressed: () {
//                   encrypt();
//                 },
//                 child: Container(
//                     color: Colors.blue,
//                     width: 300,
//                     height: 50,
//                     child: Center(
//                         child: Text(
//                       'Encrypt',
//                       style: TextStyle(color: Colors.white),
//                     )))),
//             SizedBox(height: 20),
//             Text(
//               encryptedtext,
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(height: 20),
//             TextButton(
//                 onPressed: () {
//                   decrypt();
//                 },
//                 child: Container(
//                     color: Colors.blue,
//                     width: 300,
//                     height: 50,
//                     child: Center(
//                         child: Text(
//                       'Decrypt',
//                       style: TextStyle(color: Colors.white),
//                     )))),
//             SizedBox(height: 20),
//             Text(
//               decryptedtext,
//               style: TextStyle(fontSize: 20),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }