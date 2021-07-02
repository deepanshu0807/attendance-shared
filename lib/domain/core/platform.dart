import 'dart:io';

import 'package:flutter/foundation.dart';

mixin RunningOn {
  static bool get iOS => !kIsWeb && Platform.isIOS;
  static bool get android => !kIsWeb && Platform.isAndroid;
  static bool get web => kIsWeb;
}
