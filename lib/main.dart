import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_gorouter/clockView.dart';
import 'package:riverpod_gorouter/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // var arr = ['health', 'test'];
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color(0xFF2D2F41),
        child: const ClockView(),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     try {
      //       final dateTime = DateTime.now();
      //       final formattedTime = DateFormat.jms().format(dateTime);
      //       final formattedDate = DateFormat.yMMMEd().format(dateTime);
      //       await FirebaseFirestore.instance
      //           .collection("Insurance")
      //           .doc(dateTime.year.toString())
      //           .collection(DateFormat.LLLL().format(dateTime))
      //           .doc(formattedDate)
      //           .collection("123524126")
      //           .doc("health")
      //           .set(
      //         {
      //           'plans': {
      //             'counts': FieldValue.arrayUnion([formattedTime]),
      //             'id': 'hdfc_3465',
      //             'name': 'HDFC Health Insurance'
      //           },
      //           'user_details': {'id': '123524126', 'name': 'Kunal'}
      //         },
      //         SetOptions(merge: true),
      //       );
      //       // ignore: empty_catches
      //     } catch (e) {}
      //   },
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
