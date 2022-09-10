import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'DOG/services/hive_service.dart';
import 'dog_and_cat.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(HiveService.dbName);
  runApp(const Animals());
}

class Animals extends StatelessWidget {
  const Animals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DogsAndCats(),
    );
  }
}
