import 'package:club/clubs/model/club.color.model.dart';
import 'package:club/clubs/ui.const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tecProvider =
    NotifierProviderFamily<TECProvider, TextEditingController, String>(
      TECProvider.new,
    );

class TECProvider extends FamilyNotifier<TextEditingController, String> {
  @override
  TextEditingController build(String arg) => TextEditingController();
}

final clubColorSelectionProvider =
    NotifierProvider<ClubColorSelection, List<ClubColor>?>(
      ClubColorSelection.new,
    );

class ClubColorSelection extends Notifier<List<ClubColor>?> {
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
