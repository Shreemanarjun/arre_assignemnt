import 'package:flutter_riverpod/flutter_riverpod.dart';

final isVisiblePod = StateProvider.autoDispose<bool>((ref) {
  return false;
});
