import 'package:flutter/material.dart';
import 'package:flutter_new_app/views/home.dart';

import 'package:flutter_new_app/views/new.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeUI(),
      theme: ThemeData(
        fontFamily: 'Kanit',
      ),
    ),
  );
}
