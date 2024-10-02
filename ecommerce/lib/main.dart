import 'package:flutter/material.dart';
import 'package:ecommerce/features/presentation/pages/home.dart';
import 'injection_container.dart' as di;

void main() async {
	WidgetsFlutterBinding.ensureInitialized();
	await di.init();
  runApp(Home());
}
