import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

final isDarkModeProver = StateProvider<bool>(
  (ref) => false,
);

final colorsListProvider = Provider((ref) => colorList);
final selectedColorProvider = StateProvider<int>((ref) => 0);
