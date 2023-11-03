import 'package:alarm_app/core/utils/service_locator.dart' as di;
import 'package:flutter/material.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.initHome();
  runApp(const BooklyApp());
}
