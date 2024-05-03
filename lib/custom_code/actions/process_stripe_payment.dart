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
import 'package:http/http.dart' as http;

import 'dart:convert';

Future<void> processStripePayment(double amount) async {
  // Convertir en entier
  int adjustedAmount = (amount * 100 / 3.2).round();
  String apiKey =
      'sk_test_51OopTSDtHS4Nu6kaTroMy6hwN1MKCBKitrzK3lm26xblje6CYwCiHccuY5VB1uNQppoCOSn6C6u92jn7i6zjLikl00zSebwoIU'; // Remplacez par votre clé secrète Stripe

  try {
    var response = await http.post(
      Uri.parse('https://api.stripe.com/v1/payment_intents'),
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: {
        'amount': '$adjustedAmount', // Montant en cents (converti en chaîne)

        'currency': 'usd', // Devise (USD dans cet exemple)
        'description':
            'transaction réussi pour FlutterFlow', // Description du paiement
        // Numéro de carte Visa de test
      },
    );

    if (response.statusCode == 200) {
      // Le paiement a été effectué avec succès
      print('Paiement Stripe effectué avec succès');
      // Gérer ici la réponse de Stripe ou mettre à jour l'interface utilisateur en conséquence
    } else {
      // Gestion des erreurs si la requête échoue
      print('Erreur lors du paiement Stripe : ${response.body}');
      // Afficher un message d'erreur à l'utilisateur ou enregistrer les détails de l'erreur
    }
  } catch (e) {
    // Gestion des exceptions
    print('Erreur lors du paiement Stripe : $e');
    // Afficher un message d'erreur à l'utilisateur ou enregistrer les détails de l'erreur
  }
}
