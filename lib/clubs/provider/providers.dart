import 'package:club/clubs/model/club.color.model.dart';
import 'package:club/clubs/ui.const.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'providers.g.dart';

// final tecProvider =
//     NotifierProviderFamily<TECProvider, TextEditingController, String>(
//       TECProvider.new,
//     );

@riverpod
class Tec extends _$Tec {
  @override
  TextEditingController build(String arg) => TextEditingController();
}

@riverpod
class Bool extends _$Bool {
  @override
  bool? build(String? arg) => null;
  void set(bool val) => state = val;
  void toggle() => state = !state!;
}

@riverpod
class ClubColorSelection extends _$ClubColorSelection {
  @override
  List<ClubColor>? build() => [];
  Future<void> addColor() async {
    final newColor = ClubColor(id: uuid.v4());
    state = [...state ?? [], newColor];
  }

  void removeColor(int index) {
    state = [...state ?? []]..removeAt(index);
  }

  void addColorName(int index, String colorName) {
    final tempList = List<ClubColor>.from(state ?? []);
    tempList[index].colorName = colorName;
    state = tempList;
  }

  Future<void> addColorCode(int index, String colorCode) async {
    final tempList = List<ClubColor>.from(state ?? []);
    tempList[index] = tempList[index].copyWith(colorCode: colorCode);
    state = tempList;
  }

  void saveColor(String? colorName, String? colorCode) {}
}
