import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

String? formatarMoeda(double? valorSemFormato) {
  if (valorSemFormato == null) return null;
  final formatador = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  return formatador.format(valorSemFormato);
}