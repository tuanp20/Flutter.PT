import 'dart:convert';
import 'package:flutter/material.dart';

class Product {
  String TEN;
  int SOLUONG;
  int STT;
  int PHANLOAI;

  // Contructor
  Product({this.TEN, this.SOLUONG, this.STT, this.PHANLOAI});

  Product.fromJson(Map<String, dynamic> json) {
    TEN = json['TEN'];
    SOLUONG = json['SOLUONG'];
    STT = json['STT'];
    PHANLOAI = json['PHANLOAI'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TEN'] = this.TEN;
    data['SOLUONG'] = this.SOLUONG;
    data['STT'] = this.STT;
    data['PHANLOAI'] = this.PHANLOAI;
    return data;
  }
}
