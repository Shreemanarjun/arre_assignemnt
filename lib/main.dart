import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:arre_assignmemnt/splasher.dart';

/// This entry point should be used for production only
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(child: Splasher()),
  );
}
