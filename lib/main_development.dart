import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reco/bootstrap.dart';
import 'package:reco/features/app/app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.black,
  ),);
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  bootstrap(() => const App());
}
