// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
import 'package:cloud_firestore/cloud_firestore.dart';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
Future<List<dynamic>> getAllTransactions() async {
  QuerySnapshot querySnapshot =
      await FirebaseFirestore.instance.collection('transaction').get();
  return querySnapshot.docs.map((doc) => doc.data()).toList();
}

Future<double> sumTransactionAmounts() async {
  List<dynamic> transactions = await getAllTransactions();
  double totalAmount = 0.0;

  for (var transaction in transactions) {
    if (transaction.containsKey('montant')) {
      totalAmount += double.parse(transaction['montant'].toString());
    }
  }

  return totalAmount;
}
