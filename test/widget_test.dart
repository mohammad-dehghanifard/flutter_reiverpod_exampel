import 'package:flutter/material.dart';
import 'package:flutter_riverpod_example/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets("render 2 container test", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    var widget = find.byType(Container);
    expect(widget,findsNWidgets(2));
  });
}