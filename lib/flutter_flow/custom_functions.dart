import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

int sumaCalorias(
  String cal1,
  String cal2,
  String cal3,
) {
  int parsePrimero = int.parse(cal1);
  int parseSegundo = int.parse(cal2);
  int parseTercero = int.parse(cal3);

  int total = parsePrimero + parseSegundo + parseTercero;

  return total;
}

int sumaGrasas(
  String grasa1,
  String grasa2,
  String grasa3,
) {
  int parsePrimero = int.parse(grasa1);
  int parseSegundo = int.parse(grasa2);
  int parseTercero = int.parse(grasa3);

  int total = parsePrimero + parseSegundo + parseTercero;

  return total;
}

int sumaCarbos(
  String carbo1,
  String carbo2,
  String carbo3,
) {
  int parsePrimero = int.parse(carbo1);
  int parseSegundo = int.parse(carbo2);
  int parseTercero = int.parse(carbo3);

  int total = parsePrimero + parseSegundo + parseTercero;

  return total;
}

int sumaProteinas(
  String prote1,
  String prote2,
  String prote3,
) {
  int parsePrimero = int.parse(prote1);
  int parseSegundo = int.parse(prote2);
  int parseTercero = int.parse(prote3);

  int total = parsePrimero + parseSegundo + parseTercero;

  return total;
}
