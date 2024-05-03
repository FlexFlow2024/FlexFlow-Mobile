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

Future envoiMail(
  String? nom,
  String? email,
  String? sujet,
  String? message,
) async {
  /* nom = "houssine";
  email = "houssinebenarous59@gmail.com";
  sujet = "Confirmation d'achat";
  message = "Bonjour houssine,Votre commande est prête à être retirée. Vous pouvez venir la récupérer à tout moment.";*/

  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  const service_id = "service_shyxg0g";
  const template_id = "template_opqxss8";
  const user_id = "Mq4Ihv9PRY7_31DMB";
  final response = await http.post(url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        "service_id": service_id,
        "template_id": template_id,
        "user_id": user_id,
        "template_params": {
          "sujet": "houssine",
          "sent_to": "houssinebenarous59@gmail.com",
          "to_name": "Confirmation d'achat",
          "message":
              "Bonjour houssine,Votre commande est prête à être retirée. Vous pouvez venir la récupérer à tout moment.",
        }
      }));
  return response.statusCode;
}
