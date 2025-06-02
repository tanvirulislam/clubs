import 'package:flutter/material.dart' show SizedBox;
import 'package:uuid/uuid.dart';

final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
//widths
const width5 = SizedBox(width: 5);
const width10 = SizedBox(width: 10);
const width20 = SizedBox(width: 20);
const width30 = SizedBox(width: 30);
const width40 = SizedBox(width: 40);
const width50 = SizedBox(width: 50);
const width70 = SizedBox(width: 70);

//height
const height2 = SizedBox(height: 2);
const height5 = SizedBox(height: 5);
const height10 = SizedBox(height: 10);
const height20 = SizedBox(height: 20);
const height30 = SizedBox(height: 30);
const height40 = SizedBox(height: 40);
const height50 = SizedBox(height: 50);

double clubPickerWidth = 300;
double clubPickerHeight = 300;

final uuid = const Uuid();

const clubImageLink =
    'https://static.vecteezy.com/system/resources/previews/002/181/306/non_2x/football-player-character-collection-free-vector.jpg';
const String clubAdsImage =
    'https://images.pexels.com/photos/460672/pexels-photo-460672.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2';
