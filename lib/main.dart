import 'package:alarm_app/core/utils/service_locator.dart'as di;
import 'package:flutter/material.dart';

import 'app.dart';

void main() async {
 di.initHome();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const BooklyApp());
}
